
package com.portfolio.servlets;

import com.portfolio.dao.myProjectDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.portfolio.entities.myProjects;
import com.portfolio.helper.factoryProvide;
import java.io.FileOutputStream;
import java.io.File;
import java.io.InputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

/**
 *
 * @author Majid
 */
@MultipartConfig
public class myProjectsServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String  pName = request.getParameter("projectName");
            String  pType= request.getParameter("projectType");
            String  pLink= request.getParameter("projectLink");
            Part part =request.getPart("projectPic");
            
            myProjects myprojects =  new myProjects(pName, pType, pLink, part.getSubmittedFileName());
            
            try{
                
                myProjectDao myProjectD =new myProjectDao(factoryProvide.getFactory());
                myProjectD.saveProjects(myprojects);
              
            }catch(Exception e){
                e.printStackTrace();
            }
            
//              write image in this path
               String path = request.getRealPath("components")+File.separator+"img"+File.separator+"myProjectsIMG"+part.getSubmittedFileName();
            
                FileOutputStream fos = new FileOutputStream(path);
                InputStream is = part.getInputStream();
                
                byte[] data = new byte[is.available()];
                
                is.read(data);
                fos.write(data);
             
            
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("message", "Projects Successfully Uploaded");
            response.sendRedirect("myProjects.jsp");
      
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
