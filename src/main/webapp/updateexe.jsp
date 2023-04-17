<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.Control.CRUDLibro" %>
<%@ page import="com.jacaranda.Control.CRUDCategoria" %>
<%@ page import="com.jacaranda.Clases.Libro" %>
<%@ page import="com.jacaranda.Clases.Categoria" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%


	try{
		
	HttpSession sesion = request.getSession();
	
	int id = (Integer) sesion.getAttribute("actualizar");

	CRUDLibro crl = new CRUDLibro();
	CRUDCategoria crc = new CRUDCategoria();

	String titulo = request.getParameter("titulo");
	String descripcion = request.getParameter("descripcion");
	int stock = Integer.valueOf(request.getParameter("stock"));
	double price = Double.valueOf(request.getParameter("precio"));
	
	Categoria categoria = crc.getCategoria((Integer) sesion.getAttribute("categoria"));
	
	Libro newLibro = new Libro(titulo, descripcion, stock, price, categoria);
	
	newLibro.setId(id);
	
	crl.updateLibro(newLibro);
	
	response.sendRedirect("catalogo.jsp");
	}catch(Exception e){
		response.sendRedirect("Error");
	}

%>

</body>
</html>