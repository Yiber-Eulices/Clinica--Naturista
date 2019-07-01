/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import HibernateUtil.HibernateUtil;
import Modelo.Medicamento;
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
public class controllerMedicamento extends HttpServlet {

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
                //registrar
                create(request,response);
            break;
            case "update":
                //actualizar
                update(request,response);
            break;
            case "delete":
                //eliminar
                delete(request,response);
            break;
            case "admin":
                //este es el R 
                admin(request,response);
            break;
        }
    }
    
     private void create(HttpServletRequest request, HttpServletResponse response){
         if(request.getMethod().equalsIgnoreCase("POST")){
             String codigo= request.getParameter("txtCodigo");
             String nombre= request.getParameter("txtNombre");
             String precio= request.getParameter("txtPrecio");
             String cantDisp= request.getParameter("txtCantdisp");
             String descripcion= request.getParameter("txtDescripcion");
             String foto= request.getParameter("txtFoto");
             
             Medicamento mto = new Medicamento();
             mto.setCodigo(codigo);
             mto.setNombre(nombre);
             mto.setPrecio(Double.parseDouble(precio));
             mto.setCantidad(Integer.parseInt(cantDisp));
             mto.setDescripcion(descripcion);
             mto.setFoto(foto);
             
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            
            sesion.beginTransaction();
            sesion.save(mto);
            sesion.getTransaction().commit();
            sesion.close();
            admin(request,response); 
            
         }else{
            try{
                request.getRequestDispatcher("crearMedicamento.jsp").include(request,response);
            }catch(ServletException | IOException ex){
                System.out.println("Error en registrar"+ex.getMessage());               
            }           
         }       
    }
    private void update(HttpServletRequest request, HttpServletResponse response){
    Session sesion = HibernateUtil.getSessionFactory().openSession();
    
    int id= Integer.parseInt(request.getParameter("id"));
    Medicamento mto = (Medicamento) sesion.get(Medicamento.class,id);
    
    if (request.getMethod().equalsIgnoreCase("POST")){
            String codigo= request.getParameter("txtCodigo");
            String nombre= request.getParameter("txtNombre");
            String precio= request.getParameter("txtPrecio");
            String cantDisp= request.getParameter("txtCantdisp");
            String descripcion= request.getParameter("txtDescripcion");
            String foto= request.getParameter("txtFoto");
             
            mto.setCodigo(codigo);
            mto.setNombre(nombre);
            mto.setPrecio(Double.parseDouble(precio));
            mto.setCantidad(Integer.parseInt(cantDisp));
            mto.setDescripcion(descripcion);
            mto.setFoto(foto);
             
            sesion.beginTransaction();
            sesion.saveOrUpdate(mto);
            sesion.getTransaction().commit();
            sesion.close();
            admin(request,response);  
    }
        request.setAttribute("editarMedicamento", mto);
        try{
            request.getRequestDispatcher("editarMedicamento.jsp").include(request,response);
        }catch(ServletException | IOException ex){
            System.out.println("Error en registrar"+ex.getMessage());               
        }      
    }
    private void delete(HttpServletRequest request, HttpServletResponse response){
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        
        int id = Integer.parseInt(request.getParameter("id"));
        Medicamento mto= (Medicamento) sesion.get(Medicamento.class, id);
        sesion.beginTransaction();
        sesion.delete(mto);
        sesion.getTransaction().commit();
        sesion.close();
        admin(request,response);        
    }
    private void admin(HttpServletRequest request, HttpServletResponse response){
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        ArrayList data = (ArrayList)sesion.createQuery("FROM Medicamento").list();
        
        ArrayList<Medicamento>lista = new ArrayList();
        for(Object obj: data){
            lista.add((Medicamento)obj);
        }
        
        request.setAttribute("listarMedicamento", lista);
        
        try{
            request.getRequestDispatcher("listarMedicamento.jsp").forward(request, response);
        }catch(ServletException | IOException ex){
            System.out.println("Error en admin venta: "+ ex.getMessage());
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
