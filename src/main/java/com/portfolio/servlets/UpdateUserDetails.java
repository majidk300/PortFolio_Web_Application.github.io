
package com.portfolio.servlets;

import com.portfolio.dao.userDetailDao;
import com.portfolio.entities.Details;
import com.portfolio.entities.UserRegister;
import com.portfolio.helper.factoryProvide;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.http.Part;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Majid
 */
@MultipartConfig
public class UpdateUserDetails extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            String  name= request.getParameter("name");
            String  email= request.getParameter("email");
            String  phone= request.getParameter("phone");
            String  profession= request.getParameter("profession");
            String  facebook= request.getParameter("facebook");
            String  instagram= request.getParameter("instagram");
            String  linkdin= request.getParameter("linkdin");
            Part part =  request.getPart("photo");
            String  bio= request.getParameter("about");
            
            
//            image file name 
            String pic = part.getSubmittedFileName();
            
            HttpSession httpSession = request.getSession();
            
            
            try{
                
                Details userDetails  =  new Details(name, profession, bio, facebook, instagram, linkdin, part.getSubmittedFileName(), email,phone);
                
                Session s = factoryProvide.getFactory().openSession();
                Transaction tx  = s.beginTransaction();

                s.save(userDetails);
                out.println("saved");
                
                tx.commit();
                s.close();
                
                String path = request.getRealPath("components")+File.separator+"img"+File.separator+part.getSubmittedFileName();
                
                FileOutputStream fos = new FileOutputStream(path);
                InputStream is = part.getInputStream();
                
                byte[] data = new byte[is.available()];
                
                is.read(data);
                fos.write(data);
                
                httpSession.setAttribute("message", "Successfully Updated");
                response.sendRedirect("admin-page.jsp");
                
            }catch (Exception e){
                e.printStackTrace();
            }
            
            
            
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
