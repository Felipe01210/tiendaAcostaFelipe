<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.CRUDSession" %>
<%@ page import="com.jacaranda.Control.CRUDCategoria" %>
<%@ page import="com.jacaranda.Clases.Categoria" %>
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

	Usuario usuario = (Usuario) sesion.getAttribute("usuario");
	String rol = usuario.getRol();
%>

<header class="row">
	<div class="col-4">
		<h3>Nuestras Categorias</h3>
	</div>
	<div class="col-3">
		<a href="index.jsp"><button>Ver Libros</button></a>
	</div>
	<%if(rol.equals("ADMIN")) {%>
	<div class="col-2">
		<a href="agregar_cat.jsp"><button>Agregar Categoria</button></a>
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
</header>

<ul class="list-group">

<%
	
	CRUDCategoria crc = new CRUDCategoria();

	List<Categoria> listaCategoria = crc.getCategorias();
	for(int i = 0; i< listaCategoria.size(); i++){
		Categoria categoria = listaCategoria.get(i);
		%>
		
		<li class="list-group-item">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title"><%=categoria.getId()%>: <%=categoria.getName()%></h5>
					<p class="card-text"><%=categoria.getDescripcion() %></p>
					<p class="card-text">Libros: <%=categoria.getListaLibros().size() %></p>
					<%if(rol.equals("ADMIN")) {%>
					<form action="update_cat.jsp" method="post">
						<input type="text" value="<%=categoria.getId() %>" name="id_actualizar" hidden>
						<button type="submit">Actualizar</button>
					</form>
					<form action="borrar_cat.jsp" method="post">
						<input type="text" value="<%=categoria.getId() %>" name="id_borrar" hidden>
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