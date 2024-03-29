/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import HibernateUtil.HibernateUtil;
import Modelo.LugarAtencion;
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
 * @author YIBER
 */
public class controllerLugarAtencion extends HttpServlet {

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
           case "create":
               create (request, response);
               break;
           case "update":
               update (request, response);
               break;
           case "delete":
               delete (request, response);
               break;
           case "admin":
               admin (request, response);
               break;
       }
    }
    private void create(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        if(request.getMethod().equalsIgnoreCase("POST")){
            LugarAtencion la = new LugarAtencion();
            String direccion = request.getParameter("direccion");
            String ciudad = request.getParameter("ciudad");
            String nombre = request.getParameter("nombre");
            la.setDireccion(direccion);
            la.setCiudad(ciudad);
            la.setNombre(nombre);
            
            
            sesion.beginTransaction();
            sesion.save(la);
            sesion.getTransaction().commit();
            admin(request, response);
        }else{
            try{
                request.getRequestDispatcher("CreateLugarAtencion.jsp").forward(request, response);
            }catch (ServletException | IOException ex){
                System.out.println("Error al registrar"+ex.getMessage());
            }
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        int lugar = Integer.parseInt(request.getParameter("lugar"));
        LugarAtencion la = (LugarAtencion)sesion.get(LugarAtencion.class, lugar);
        if(request.getMethod().equalsIgnoreCase("POST")){
            la.setDireccion(request.getParameter("direccion"));
            la.setCiudad(request.getParameter("ciudad"));
            la.setNombre(request.getParameter("nombre"));
            
            sesion.beginTransaction();
            sesion.saveOrUpdate(la);
            sesion.getTransaction().commit();
            admin(request, response);
        }else{
            request.setAttribute("edidLugar", la);
            try {
                request.getRequestDispatcher("UpdateLugarAtencion.jsp").forward(request, response);
            }catch (ServletException | IOException ex){
                System.out.println("Error al actualizar"+ex.getMessage());
            }
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        int id = Integer.parseInt(request.getParameter("lugar"));
        LugarAtencion la = (LugarAtencion) sesion.get(LugarAtencion.class, id);
        sesion.beginTransaction();
        sesion.save(la);
        sesion.getTransaction().commit();
        admin(request, response);
    }

    private void admin(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        ArrayList data = (ArrayList) sesion.createQuery("FROM LugarAtencion").list();
        
        ArrayList<LugarAtencion> lista = new ArrayList();
        for(Object obj : data){
            lista.add((LugarAtencion)obj);
        }
        request.setAttribute("listLugar", lista);
        try{
            request.getRequestDispatcher("ListLugarAtencion.jsp").forward(request, response);
        }catch(ServletException | IOException ex){
            System.out.println("Error al listar"+ex.getMessage());
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
