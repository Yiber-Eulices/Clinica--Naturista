/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Modelo.Especialidad;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;

/**
 *
 * @author ADMIN
 */
public class controllerEspecialidad extends HttpServlet {

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
        String action = request.getParameter("a");
        
        switch(action){
            case "create":
            create(request, response);
            break;
            
            case "update":
                update(request, response);
                break;
            
            case "delete":
                delete(request, response);
                break;
                
            case "admin":
                admin(request, response);
                break;
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

    private void create(HttpServletRequest request, HttpServletResponse response) {
        if(request.getMethod().equalsIgnoreCase("POST")){
            
            String nombre = request.getParameter("txtnombre");
            String descripcion = request.getParameter("txtdescripcion");
            
            Especialidad esp = new Especialidad();
            esp.setNombre(nombre);
            esp.setDescripcion(descripcion);
            Session sesion = HibernateUtil.HibernateUtil.getSessionFactory().openSession();
            sesion.beginTransaction();
            sesion.save(esp);
            sesion.getTransaction().commit();
            
            admin(request, response);
            
        }else{
            try{
                request.getRequestDispatcher("CrearEspecialidad.jsp").include(request, response);
            }catch(ServletException | IOException ex){
                System.out.println("Error al registrar especialidad" + ex.getMessage());
            }
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.HibernateUtil.getSessionFactory().openSession();
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        Especialidad espe = (Especialidad) sesion.get(Especialidad.class, id);
        
        if(request.getMethod().equalsIgnoreCase("POST")){
            espe.setNombre(request.getParameter("txtnombre"));
            espe.setDescripcion(request.getParameter("txtdescripcion"));
            
            sesion.beginTransaction();
            sesion.saveOrUpdate(espe);
            sesion.getTransaction().commit();
            admin(request, response);
        }else{
            request.setAttribute("editarEspecialidad", espe);
            try{
                request.getRequestDispatcher("UpdateEspecialidad.jsp").forward(request, response);
            }catch(ServletException | IOException ex){
                System.out.println("Error al actualizar Especialidad" + ex.getMessage());
            }
        }
    }
    private void delete(HttpServletRequest request, HttpServletResponse response) {
         Session sesion = HibernateUtil.HibernateUtil.getSessionFactory().openSession();
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        Especialidad espe = (Especialidad) sesion.get(Especialidad.class, id);
        
        sesion.beginTransaction();
        sesion.delete(espe);
        sesion.getTransaction().commit();
        admin(request, response);
    }

    private void admin(HttpServletRequest request, HttpServletResponse response) {
            Session sesion = HibernateUtil.HibernateUtil.getSessionFactory().openSession();
        ArrayList datos = (ArrayList) sesion.createQuery("FROM Especialidad").list();
        
        ArrayList<Especialidad> lista = new ArrayList();
        
        for(Object obj:datos){
            lista.add((Especialidad)obj);
        }
        request.setAttribute("Listaespecialdad", lista);
        try{
            request.getRequestDispatcher("ListaEspecialidad.jsp").forward(request, response);
        }catch(ServletException | IOException ex){
            System.out.println("Error al registrar especialidad" +ex.getMessage());
        }
    }

}
