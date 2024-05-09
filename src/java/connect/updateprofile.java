/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package connect;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author kumar
 */
@MultipartConfig
@WebServlet(name = "updateprofile", urlPatterns = {"/updateprofile"})
public class updateprofile extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateprofile</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateprofile at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        HttpSession s= request.getSession();
        String enrollmentno=s.getAttribute("studentid").toString();
        
        String name=request.getParameter("name");
        String contactno=request.getParameter("contactno");
        String emailaddress=request.getParameter("emailaddress");
        String address=request.getParameter("address");
        
        
        Part p= request.getPart("filepic");
        java.util.Date d=new java.util.Date();
        java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("ddMMyyyyhhmmss");
        
        String date=sdf.format(d);
        String filename=date+p.getSubmittedFileName();
        
        InputStream is=p.getInputStream();
        
        File f=new File(request.getRealPath("/uploadimage"),filename);
         
        Files.copy(is,f.toPath());
        String cmd="update studentinfo set name='"+name+"',contactno='"+contactno+"',emailaddress='"+emailaddress+"',address='"+address+"',profilepic='"+filename+"' where enrollmentno='"+enrollmentno+"' ";

        DbManager db=new DbManager();
        boolean b=db.insertUpdateDelete(cmd);
        if(b==true)
        {
            response.sendRedirect("studentzone/profile.jsp?f=1");
        }
        else
        {
            response.sendRedirect("studentzone/profile.jsp?f=0");
        }
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
