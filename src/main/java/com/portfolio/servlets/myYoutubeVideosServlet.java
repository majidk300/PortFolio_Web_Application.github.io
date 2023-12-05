/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.portfolio.servlets;

import com.portfolio.dao.myYoutubeVideoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.portfolio.entities.myYoutubeVideos;
import com.portfolio.helper.factoryProvide;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author Majid
 */
@MultipartConfig
public class myYoutubeVideosServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String videoName = request.getParameter("videoName");
            String videoType = request.getParameter("videoType");
            String videoLink = request.getParameter("videoLink");
            Part part = request.getPart("projectthumbnail");
            
            try{
                
               myYoutubeVideos videos  = new myYoutubeVideos(videoName, videoType, videoLink, part.getSubmittedFileName());
               
                myYoutubeVideoDao VDao = new myYoutubeVideoDao(factoryProvide.getFactory());
                
                 VDao.saveYoutubeVideos(videos);
                
                
            }catch(Exception e){
                e.printStackTrace();
            }
            
            
            
            //write image in this path
            
            String path = request.getRealPath("components")+File.separator+"img"+File.separator+"videosPics"+part.getSubmittedFileName();
            
            FileOutputStream fos = new FileOutputStream(path);
            InputStream is = part.getInputStream();
            
            byte[] data = new byte[is.available()];
            
            is.read(data);
            fos.write(data);
            
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("message", "Successfully video uploaded");
            response.sendRedirect("myYoutubeVideos.jsp");
            
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
