<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.*" %>
<%@ page import="com.jacaranda.Clases.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<%

	HttpSession sesion = request.getSession();

	Usuario usuario = new Usuario();

try{
	if((Boolean) sesion.getAttribute("login")){
		usuario = (Usuario) sesion.getAttribute("usuario");
		Carrito carrito = (Carrito) sesion.getAttribute("carrito");
	}	}catch(Exception e){
		sesion.setAttribute("login",false);
		response.sendRedirect("index.jsp");
	}

%>


<header class="row">
	<div class="col-4">
		<h3>Carrito de <%=usuario.getNombre() %></h3>
	</div>
	<div class="col-3">
		<a href="index.jsp"><button>Ver Libros</button></a>
	</div>
	<div class="col-2">
	</div>
	<div class="col-1">
	</div>
	<div class="col-2">
		<a href="logoutexe.jsp"><button>Log Out</button></a>
	</div>
</header>

<% 

	Carrito carrito = (Carrito) sesion.getAttribute("carrito");

	double total = 0.00;
	
	for(ItemCarrito item: carrito.getCesta()){
		total += Math.round(item.getPrecio());
	}

%>

<ul class="list-group">


	<li class="list-group-item">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Cesta</h5>
				<p class="card-text">Pedidos: <%=carrito.getCesta().size() %>   |
				Precio Total:  <%=total %> </p>
				<form action="comprarexe.jsp" method="post">
					<input value="<%=total %>" name="total" hidden>
					<button type="submit">Comprar todo</button>
				</form>
				<br>
			</div>
		</div>
	</li>
	
	<h5>A continuación tiene información de cada uno de los elementos en su carrito y
		la opcion de comprarlos individualmente</h5>

<%
	for(ItemCarrito item: carrito.getCesta()){
		%>
		
		<li class="list-group-item">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Pedido de: <%=item.getLibro().getTitulo() %></h5>
					<p class="card-text">Cantidad pedida: <%=item.getCantidad() %>
					Precio Unitario: <%=item.getLibro().getPrice()%>
					Precio Total del pedido: <%=item.getPrecio() %></p>
					<form action="comprar_individualexe.jsp" method="post">
						<button type="submit">Realizar este pedido</button>
						<input value="<%=item.getLibro().getId() %>" name="id_comprar" hidden>
					</form>
					<form action="borrar_itemCarritoexe.jsp" method="post">
						<input type="text" value="<%=item.getLibro().getId() %>" name="id_borrar" hidden="true">
						<button type="submit">Borrar</button>
					</form>
				</div>
			</div>
		</li>
		
		<%
	}

%>


</ul>


</body>
</html>