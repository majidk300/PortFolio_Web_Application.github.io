
package com.portfolio.servlets;

import com.portfolio.dao.myResumeDao;
import com.portfolio.entities.ResumePicEntities;
import com.portfolio.helper.factoryProvide;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Majid
 */
@MultipartConfig
public class resumePicServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Part part = request.getPart("resumePhoto");
            
            try{
                
            ResumePicEntities resume = new ResumePicEntities(part.getSubmittedFileName());
            
                myResumeDao picDao = new myResumeDao(factoryProvide.getFactory());
                picDao.saveResumePic(resume);
                
            }catch(Exception e){
                e.printStackTrace();
            }
            
            String path  = request.getRealPath("components")+File.separator+"img"+part.getSubmittedFileName();
            
            FileOutputStream fos = new FileOutputStream(path);
            InputStream is = part.getInputStream();
            
            byte[] data = new byte[is.available()];
            
            is.read(data);
            fos.write(data);
            
            
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("message", "Successfully Uploaded Resume Pic");
            response.sendRedirect("resumePic.jsp");
            
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
