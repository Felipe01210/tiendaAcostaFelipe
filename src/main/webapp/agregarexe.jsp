<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.*" %>
<%@ page import="com.jacaranda.Clases.*" %>
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
	
	boolean bandera = false;

	String titulo = request.getParameter("titulo");
	String descripcion = request.getParameter("descripcion");
	int stock = Integer.valueOf(request.getParameter("stock"));
	double precio = Double.valueOf(request.getParameter("precio"));
	int cat_id = Integer.valueOf(request.getParameter("categoria"));
	
	Categoria cat = crc.getCategoria(cat_id);
	
	for(Libro l: crl.getLibros()){
		if(l.getTitulo().equals(titulo)){
			session.setAttribute("error","libro_existente");
			bandera = true;
		}
	}
	
	if(!bandera){
		crl.saveLibro(titulo, descripcion, stock, precio, cat);
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("Error");
	}
	
	

%>

</body>
</html>