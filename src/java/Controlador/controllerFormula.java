/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import HibernateUtil.HibernateUtil;
import Modelo.Cita;
import Modelo.Formula;
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
public class controllerFormula extends HttpServlet {

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
         String descripcion= request.getParameter("txtDescripcion");
         String Cita = request.getParameter("cmbCita");
  
          Formula fla = new Formula();
         fla.setDescripcion(descripcion);
         
          Session sesion = HibernateUtil.getSessionFactory().openSession();
         Cita cta = (Cita)sesion.get(Cita.class, Integer.parseInt(Cita));
         
         fla.setIdcita(cta);
         
           sesion.beginTransaction();
           sesion.save(fla);
           sesion.getTransaction().commit();
           sesion.close();
           admin(request, response);     
      }else{
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            ArrayList data = (ArrayList) sesion.createQuery("FROM Cita").list();
            
            ArrayList<Cita> fta= new ArrayList();
            for(Object obj: data){
                fta.add((Cita)obj);
            }
            request.setAttribute("Cita", fta);
            
            try{
                request.getRequestDispatcher("crearFormula.jsp").forward(request,response);
            }
            catch(ServletException | IOException ex){
                System.out.println("Error del registro: "+ex.getMessage());
            } 
      }      
         
    }
    private void update(HttpServletRequest request, HttpServletResponse response){
        
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        
        int id = Integer.parseInt(request.getParameter("id"));
        Formula fla = (Formula) sesion.get(Formula.class,id);
        
         if(request.getMethod().equalsIgnoreCase("POST")){   
         String descripcion= request.getParameter("txtDescripcion");
         String Cita = request.getParameter("txtCita");
      
         fla.setDescripcion(descripcion);
         
         Cita cta = (Cita)sesion.get(Cita.class, Integer.parseInt(Cita));
         
         fla.setIdcita(cta);
         
           sesion.beginTransaction();
           sesion.saveOrUpdate(fla);
           sesion.getTransaction().commit();
           sesion.close();
           admin(request, response); 
           
         }else{
            
            ArrayList data = (ArrayList) sesion.createQuery("FROM Cita").list();
            
            ArrayList<Cita> ct= new ArrayList();
            for(Object obj: data){
                ct.add((Cita)obj);
            }
            request.setAttribute("Cita", ct);
            
            request.setAttribute("Formula", fla);
           
            try{
            request.getRequestDispatcher("editarFormula.jsp").forward(request,response);
            }
            catch(ServletException | IOException ex){
                System.out.println("Error del registro: "+ex.getMessage());
            } 
         }  
    }
    private void delete(HttpServletRequest request, HttpServletResponse response){
        
       Session sesion = HibernateUtil.getSessionFactory().openSession();
       
       int id = Integer.parseInt(request.getParameter("id"));
       Formula fla = (Formula) sesion.get(Formula.class,id);
       sesion.beginTransaction();
       sesion.delete(fla);
       sesion.getTransaction().commit();
       sesion.close();
       admin(request, response);       
    }
    private void admin(HttpServletRequest request, HttpServletResponse response){
        
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        ArrayList data = (ArrayList) sesion.createQuery("FROM Formula").list();
        
         ArrayList<Formula> lista= new ArrayList();
            for(Object obj: data){
                lista.add((Formula)obj);
            }
            request.setAttribute("listarFormula", lista);
           
            try{
            request.getRequestDispatcher("listarFormula.jsp").forward(request,response);
            }
            catch(ServletException | IOException ex){
                System.out.println("Error del registro: "+ex.getMessage());
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
