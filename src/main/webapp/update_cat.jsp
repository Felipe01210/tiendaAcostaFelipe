<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.Control.CRUDCategoria" %>
<%@ page import="com.jacaranda.Clases.Categoria" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<header class="row">
	<div class="col-4">
		<h3>Libros del Barco</h3>
	</div>
	<div class="col-3">
		<a href="catalogo_cat.jsp"><button>Ver Categorias</button></a>
	</div>
	<div class="col-2">
	</div>
	<div class="col-1">
		<a href="carrito.jsp"><button>Carrito</button></a>
	</div>
	<div class="col-2">
		<a href="logoutexe.jsp"><button>Log Out</button></a>
	</div>
</header>

<%

	HttpSession sesion = request.getSession();

	int id = Integer.valueOf(request.getParameter("id_actualizar"));
	sesion.setAttribute("actualizar",id);
	
	CRUDCategoria crc = new CRUDCategoria();
	
	Categoria categoria = crc.getCategoria(id);

%>

<div class="container formulario centrado">
    
        <div class="row d-flex justify-content-center h-100">
            <div class="col-12 b-right container h-100">
                <form class="col-12 h-100" action="update_catexe.jsp" method="post">
                    <br>
                    <h3>ACTUALIZAR CATEGORIA</h3>
                    <hr>
                    <br>
                    <span>Nombre:</span>
                    <br>
                    <input class="w-50" type="text" value="<%=categoria.getName() %>" name="nombre">
                    <br>
                    <br>
                    <span>Descripcion:</span>
                    <br>
                    <input class="w-50" type="text" value="<%=categoria.getDescripcion() %>" name="descripcion">
                    <br>
                    <br>
                    <button class="w-5 align-bottom" type="submit">CONFIRM</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>