<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.CRUDSession" %>
<%@ page import="com.jacaranda.Control.CRUDLibro" %>
<%@ page import="com.jacaranda.Clases.Libro" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<header class="row">
	<div class="col-4">
		<h3>Nuestros Libros</h3>
	</div>
	<div class="col-6">
	</div>
	<div class="col-2">
		<a href="logoutexe.jsp"><button>Log Out</button></a>
	</div>
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
					Categoria: <%=libro.getCategoria().getId() %></p>
				</div>
			</div>
		</li>
		
		<%
	}

%>

</ul>

</body>
</html>