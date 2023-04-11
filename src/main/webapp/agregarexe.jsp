<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.CRUDLibro" %>
<%@ page import="com.jacaranda.Control.CRUDCategoria" %>
<%@ page import="com.jacaranda.Clases.Categoria" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	CRUDLibro crl = new CRUDLibro();
	CRUDCategoria crc = new CRUDCategoria();

	String titulo = request.getParameter("titulo");
	String descripcion = request.getParameter("descripcion");
	int stock = Integer.valueOf(request.getParameter("stock"));
	double precio = Double.valueOf(request.getParameter("precio"));
	int cat_id = Integer.valueOf(request.getParameter("categoria"));
	
	Categoria cat = crc.getCategoria(cat_id);
	
	try{
		crl.saveLibro(titulo, descripcion, stock, precio, cat);
		response.sendRedirect("catalogo.jsp");
	}catch(Exception e){
		response.sendRedirect("Error");
	}

%>

</body>
</html>