
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Producto;

@WebServlet(name = "SvSupermercado", urlPatterns = {"/SvSupermercado"})
public class SvSupermercado extends HttpServlet {
    
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List <Producto> productos = control.traerProductos();
        
        HttpSession mysession = request.getSession();
        mysession.setAttribute("productos",productos);
        
        response.sendRedirect("verProductos.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String nombre = request.getParameter("producto");
        int stock = Integer.parseInt(request.getParameter("stock"));
        String tipo = request.getParameter("tipo");
        int precioCompra = Integer.parseInt(request.getParameter("compra"));
        int precioVenta = Integer.parseInt(request.getParameter("venta"));
        
        Producto pr = new Producto(0,nombre,tipo,stock,precioCompra,precioVenta);
        control.crearProducto(pr);
        response.sendRedirect("index.jsp");
       
       
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
