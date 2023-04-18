<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.CRUDSession" %>
<%@ page import="com.jacaranda.Control.CRUDLibro" %>
<%@ page import="com.jacaranda.Clases.Libro" %>
<%@ page import="com.jacaranda.Clases.Usuario" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<%HttpSession sesion = request.getSession();

	String rol = "LOGOUT";
	
	//METODO PARA COMPROBAR QUE EL USUARIO ESTE LOGEADO PARA ACCEDER A LA PAGINA
	//QUITAR PARTE DE ROL PARA APLICAR A OTRAS PAGINAS
	
	try{
	if((Boolean) sesion.getAttribute("login")){
	Usuario usuario = (Usuario) sesion.getAttribute("usuario");
	rol = usuario.getRol();
	}
	}catch(Exception e){
		sesion.setAttribute("login",false);
		response.sendRedirect("index.jsp");
	}

%>

<header class="row">
	<div class="col-4">
		<h3>Nuestros Libros</h3>
	</div>
	<%if((Boolean) sesion.getAttribute("login")){ %>
	<div class="col-3">
		<a href="catalogo_cat.jsp"><button>Ver Categorias</button></a>
	</div>
	<%if(rol.equals("ADMIN")) {%>
	<div class="col-2">
		<a href="agregar.jsp"><button>Agregar Libro</button></a>
	</div>
	<%}else{ %>
	<div class="col-2">
	</div>
	<%} %>
	<div class="col-1">
		<a href="carrito.jsp"><button>Carrito</button></a>
	</div>
	<div class="col-2">
		<a href="logoutexe.jsp"><button>Log Out</button></a>
	</div>
	<%}else{ %>
	<div class="col-5">
	</div>
	<div class="col-3">
		<a href="login.jsp"><button>Log In</button></a>
	</div>
	<%} %>
</header>

<ul class="list-group">

<%
	
	CRUDLibro crl = new CRUDLibro();

	List<Libro> listaLibro = crl.getLibros();
	for(int i = 0; i< listaLibro.size(); i++){
		Libro libro = listaLibro.get(i);
		%>
		
		<li class="list-group-item">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title"><%=libro.getTitulo() %></h5>
					<p class="card-text"><%=libro.getDescripcion() %></p>
					<p class="card-text">Stock: <%=libro.getStock() %>
					Precio Unitario: <%=libro.getPrice() %>
					Categoria: <%=libro.getCategoria().getDescripcion() %></p>
					<%if((Boolean) sesion.getAttribute("login")){ %>
					<form action="addcarritoexe.jsp" method="post">
						<span>Cantidad a comprar: </span><input type="number" name="cantidad"  min="1" max="<%=libro.getStock() %>">
						<%if(libro.getStock()>0){ %>
						<button type="submit">Añadir a carrito</button>
						<input value="<%=libro.getId() %>" name="id_comprar" hidden>
						<%} %>
					</form>
					<%} %>
					<%if(rol.equals("ADMIN")) {%>
					<form action="update.jsp" method="post">
						<input type="text" value="<%=libro.getId() %>" name="id_actualizar" hidden="true">
						<button type="submit">Actualizar</button>
					</form>
					<form action="borrar.jsp" method="post">
						<input type="text" value="<%=libro.getId() %>" name="id_borrar" hidden="true">
						<button type="submit">Borrar</button>
					</form>
					<%} %>
				</div>
			</div>
		</li>
		
		<%
	}

%>

</ul>

</body>
</html>