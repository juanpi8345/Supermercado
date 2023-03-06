<%-- 
    Document   : verProductos
    Created on : 6 mar 2023, 12:38:20
    Author     : Juan
--%>

<%@page import="logica.Producto"%>
<%@page import="java.util.List"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <table class="table">
            <thead>
                <tr>
                    <th scope="col">Id producto</th>
                    <th scope="col">Cant. stock</th>
                    <th scope="col">Nombre producto</th>
                    <th scope="col">Precio compra</th>
                    <th scope="col">Precio venta</th>
                    <th scope="col">Tipo</th>
                </tr>
            </thead>
            <tbody>
                <%
                 List <Producto> productos = (List) request.getSession().getAttribute("productos");
                 
                 for(Producto pr : productos){
                    
                %>
                <tr>
                    <th scope="row"><%=pr.getId()%></th>
                    <td><%=pr.getCantStock()%></td>
                    <td><%=pr.getNombre()%></td>
                    <td><%=pr.getPrecioCompra() %></td>
                    <td><%=pr.getPrecioVenta() %></td>
                    <td><%=pr.getTipo() %></td>
                </tr>
                
                <%}%>
            </tbody>
        </table>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
    
</html>
