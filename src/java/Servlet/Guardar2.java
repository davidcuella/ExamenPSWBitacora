/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import SQL.MetodsSQL2;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
public class Guardar2 extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
        MetodsSQL2 metodos = new MetodsSQL2();
        String txtboleta = request.getParameter("txtboleta");
        String txtnombre = request.getParameter("txtnombre");
        String txtAppat = request.getParameter("txtAppat");
        String txtApmat = request.getParameter("txtApmat");
        String txtcontrasena = request.getParameter("txtcontrasena");
        String txtGrupo = request.getParameter("txtGrupo");
       
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">");
        
        boolean usuarioRepetido2 = metodos.buscarAlumnoRepetidoBD(txtboleta);

        if (usuarioRepetido2 == true) { 
            out.println("alert('El alumno con el numero de boleta " + txtboleta + ", Ya esta registrado')");
            out.println("location='index.html'");
        } else { 
            
            boolean registro = metodos.registrarAlumno(txtboleta, txtnombre, txtAppat,txtApmat, txtcontrasena, txtGrupo);
            if (registro == true) {
                out.println("alert('Alumno registrado con éxito ')");
                out.println("location='index.html'");
            } else {
                out.println("alert('ERROR no se pudo registrar el alumno')");
                out.println("location='index.html'");
            }
            System.out.println("El valor de registro en SERVLET es: " + registro);
            
        }
        out.println("</script>");
        out.println("</body>");
        out.println("</html>");

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
