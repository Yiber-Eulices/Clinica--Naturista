/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import HibernateUtil.HibernateUtil;
import Modelo.Formula;
import Modelo.FormulaProducto;
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
public class controllerFormulaProducto extends HttpServlet {

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


    private void create(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        if(request.getMethod().equalsIgnoreCase("POST")){
            FormulaProducto fp = new FormulaProducto();
            String cantidad = request.getParameter("cantidad");
            String precioUnitario = request.getParameter("precioUnitario");
            String iva = request.getParameter("iva");
            String dosis = request.getParameter("dosis");
            String idformula = request.getParameter("formula");
            String idProducto = request.getParameter("medicamento");
            int cant = Integer.parseInt(cantidad);
            double precioU = Double.parseDouble(precioUnitario);
            double iv = Double.parseDouble(iva);
            
            fp.setCantidad(cant);
            fp.setPrecioUnitario(precioU);
            fp.setIva(iv);
            fp.setDosis(dosis);
            Formula fo = (Formula)sesion.get(Formula.class, Integer.parseInt(idformula));
            Medicamento med = (Medicamento)sesion.get(Medicamento.class, Integer.parseInt(idProducto));
            fp.setIdformula(fo);
            fp.setIdproducto(med);
            
            sesion.beginTransaction();
            sesion.save(fp);
            sesion.getTransaction().commit();
            sesion.close();
            admin(request, response);
        }else{
            ArrayList data1 = (ArrayList)sesion.createQuery("FROM Medicamento").list();
            ArrayList data2 = (ArrayList)sesion.createQuery("FROM Formula").list();
            ArrayList<Medicamento> med = new ArrayList();
            for(Object obj : data1){
                med.add((Medicamento)obj);
            }
            ArrayList<Formula> form = new ArrayList();
            for(Object obj : data2){
                form.add((Formula)obj);
            }
             request.setAttribute("listMedicamento", med);
             request.setAttribute("listFormula", form);
             try{
                 request.getRequestDispatcher("CreateFormulaProducto.jsp").forward(request, response);
             }catch(ServletException | IOException ex){
                 System.out.println("Error en registrar"+ex.getMessage());
             }
        }
                
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        int idformproduc  = Integer.parseInt(request.getParameter("id"));
        FormulaProducto fp = (FormulaProducto)sesion.get(FormulaProducto.class, idformproduc);
        if(request.getMethod().equalsIgnoreCase("POST")){
            String cantidad = request.getParameter("cantidad");
            String precioUnitario = request.getParameter("precioUnitario");
            String iva = request.getParameter("iv");
            String dosis = request.getParameter("dosis");
            String formula = request.getParameter("idformula");
            String medicamento = request.getParameter("idmedicamento");
            int cant = Integer.parseInt(cantidad);
            double precioU = Double.parseDouble(precioUnitario);
            double iv = Double.parseDouble(iva);
            
            Medicamento med = (Medicamento)sesion.get(Medicamento.class, Integer.parseInt(medicamento));
            Formula formu = (Formula)sesion.get(Formula.class, Integer.parseInt(formula));
            fp.setCantidad(cant);
            fp.setPrecioUnitario(precioU);
            fp.setIva(iv);
            fp.setDosis(dosis);
            fp.setIdproducto(med);
            fp.setIdformula(formu);
            
            sesion.beginTransaction();
            sesion.saveOrUpdate(fp);
            sesion.getTransaction().commit();
            admin(request, response);
        }else{
            ArrayList data1 = (ArrayList)sesion.createQuery("FROM Medicamento").list();
            ArrayList data2 = (ArrayList)sesion.createQuery("FROM Formula").list();
            ArrayList<Medicamento> medi = new ArrayList();
            for(Object obj : data1){
                medi.add((Medicamento) obj);
            }
            ArrayList<Formula> formu = new ArrayList();
            for(Object obj : data2){
                formu.add((Formula) obj);
            }
            request.setAttribute("medicamento", medi);
            request.setAttribute("formula", formu);
            request.setAttribute("edidFP", fp);
            try{
                request.getRequestDispatcher("UpdateFormulaProducto.jsp").forward(request, response);
            }catch(ServletException | IOException ex){
                System.out.println("Error al actualizar"+ex.
                        getMessage());
            }
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        int id = Integer.parseInt(request.getParameter("id"));
        FormulaProducto fp = (FormulaProducto)sesion.get(FormulaProducto.class, id);
        sesion.beginTransaction();
        sesion.delete(fp);
        sesion.getTransaction().commit();
        admin(request, response);
    }

    private void admin(HttpServletRequest request, HttpServletResponse response) {
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        ArrayList data = (ArrayList)sesion.createQuery("FROM FormulaProducto").list();
        
        ArrayList<FormulaProducto> lista = new ArrayList();
        for(Object obj : data){
            lista.add((FormulaProducto)obj);
        }
        request.setAttribute("listFormulaProducto", lista);
        try{
            request.getRequestDispatcher("ListFormulaProducto.jsp").forward(request, response);
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
