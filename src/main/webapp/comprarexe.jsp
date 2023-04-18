<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.*" %>
<%@ page import="com.jacaranda.Clases.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDate" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	HttpSession sesion = request.getSession();

	CRUDLibro crl = new CRUDLibro();
	CRUDCompra crc = new CRUDCompra();

	Carrito carrito = (Carrito) sesion.getAttribute("carrito");
	Usuario usuario = (Usuario) sesion.getAttribute("usuario");

	double total = Double.valueOf(request.getParameter("total"));
	LocalDate fecha = LocalDate.now();
	
	for(ItemCarrito item : carrito.getCesta()){
		Libro libro = item.getLibro();
		int cantidad = item.getCantidad();
		double precio = item.getPrecio();
	
		crc.saveCompra(usuario, libro, cantidad, precio, fecha);
		
	}
	
	response.sendRedirect("confirm_compra.jsp");
	
	
	

%>

</body>
</html>