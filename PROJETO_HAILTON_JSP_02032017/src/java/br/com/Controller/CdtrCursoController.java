 
package br.com.Controller;

import br.com.DAO.CdtrCursoDAO;
import br.com.Model.CdtrCurso;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author miromar
 */
public class CdtrCursoController extends HttpServlet {

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
    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
            String acao = request.getParameter("acao");
       
        CdtrCurso curso = new CdtrCurso();
        CdtrCursoDAO cursoDAO = new CdtrCursoDAO();
        
        if(acao!=null && acao.equals("lis")){
           List<CdtrCurso> lista = cursoDAO.getByAll();
           request.setAttribute("lista", lista);
           request.getRequestDispatcher("Pages/ListaCursos.jsp").forward(request, response);
           
        
        }
        
        if(acao!=null && acao.equals("cadCurso")){
        request.getRequestDispatcher("Pages/CadastrarCursos.jsp").forward(request, response);
        
        }
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
        
        CdtrCurso curso = new CdtrCurso();
        CdtrCursoDAO cursoDAO = new CdtrCursoDAO();
        
        curso.setCursDescricao(request.getParameter("curso"));
        cursoDAO.insert(curso);  
        response.sendRedirect("Curso.do?acao=lis");
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
