/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import HibernateUtil.HibernateUtil;
import Modelo.Cita;
import Modelo.FormulaProducto;
import Modelo.Medicamento;
import Modelo.Persona;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;

/**
 *
 * @author YIBER
 */
public class controllerReporte extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("a");
        switch(action){
            case "ReportePacientes":
                ReportePacientes(request,response);
                break;
            case "ReporteMedicos":
                ReporteMedicos(request,response);
                break;
            case"ReporteMedicamentos":
                ReporteMedicamentos(request,response);
                break;             
        }
    }
    private void ReportePacientes(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        ArrayList data = (ArrayList) sesion.createQuery("From Cita").list();
        
        ArrayList<Cita> listaCita = new ArrayList();
        for(Object obj: data){
            listaCita.add((Cita)obj);
        }
        request.setAttribute("ListaCita", listaCita);
        
        ArrayList datos = (ArrayList) sesion.createQuery("FROM Persona").list();            
        ArrayList<Persona> listaPersona= new ArrayList();
        for(Object obj : datos){
            listaPersona.add((Persona) obj);
        }        
        request.setAttribute("Per",listaPersona);
        try{
            request.getRequestDispatcher("ReporteDePacientes.jsp").forward(request, response);
        }catch(ServletException | IOException ex){
            System.out.println("Error al registrar cita " + ex.getMessage());
        }
    }
    private void ReporteMedicos(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        ArrayList data = (ArrayList) sesion.createQuery("From Cita").list();
        
        ArrayList<Cita> listaCita = new ArrayList();
        for(Object obj: data){
            listaCita.add((Cita)obj);
        }
        request.setAttribute("ListaCita", listaCita);
        
        ArrayList datos = (ArrayList) sesion.createQuery("FROM Persona").list();            
        ArrayList<Persona> listaPersona= new ArrayList();
        for(Object obj : datos){
            listaPersona.add((Persona) obj);
        }        
        request.setAttribute("Per",listaPersona);
        try{
            request.getRequestDispatcher("ReporteDeMedicos.jsp").forward(request, response);
        }catch(ServletException | IOException ex){
            System.out.println("Error al registrar cita " + ex.getMessage());
        }
    }
    private void ReporteMedicamentos(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        ArrayList dataMedicamento = (ArrayList)sesion.createQuery("FROM Medicamento").list();
        
        ArrayList<Medicamento>listaMedicamento = new ArrayList();
        for(Object obj: dataMedicamento){
            listaMedicamento.add((Medicamento)obj);
        }
        
        request.setAttribute("listarMedicamento", listaMedicamento);
        
        ArrayList dataFormulaProducto = (ArrayList)sesion.createQuery("FROM FormulaProducto").list();
        
        ArrayList<FormulaProducto> listaFormulaProducto = new ArrayList();
        for(Object obj : dataFormulaProducto){
            listaFormulaProducto.add((FormulaProducto)obj);
        }
        request.setAttribute("listFormulaProducto", listaFormulaProducto);
        try{
            request.getRequestDispatcher("ReporteDeMedicamentos.jsp").forward(request, response);
        }catch(ServletException | IOException ex){
            System.out.println("Error al registrar cita " + ex.getMessage());
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
