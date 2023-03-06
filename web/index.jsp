<%-- 
    Document   : index
    Created on : 6 mar 2023, 9:57:41
    Author     : Juan
--%>

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
            <h1 class="h1" style="color:#c12828; margin-top: 10px">Añadir productos</h1>
            <form action="SvSupermercado" method="POST">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput"  name="producto"">
                    <label for="floatingInput">Producto a añadir:</label>
                </div>
                <div class="form-floating  mb-3">
                    <input type="text" class="form-control" id="floatingPassword"  name="stock">
                    <label for="floatingInput">Cantidad de stock:</label>
                </div>
                 <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput"  name="tipo">
                    <label for="floatingInput">Tipo de producto: </label>
                </div>
                <div class="form-floating  mb-3">
                    <input type="text" class="form-control" id="floatingPassword"name="compra">
                    <label for="floatingInput">Precio de compra:</label>
                </div>
                 <div class="form-floating  mb-3" >
                    <input type="text" class="form-control" id="floatingPassword"  name="venta">
                    <label for="floatingInput">Precio de venta:</label>
                </div>
             <button type="submit" class="btn btn-success">Añadir</button>
            </form>
            
            <form action="SvSupermercado" method="GET" class="text-end">
                <button  type="submit" class="btn btn-success">Visualizar productos</button>
            </form>
            
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
