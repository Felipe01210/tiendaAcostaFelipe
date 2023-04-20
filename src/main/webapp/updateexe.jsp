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
		
	HttpSession sesion = request.getSession();
	
	int id = (Integer) sesion.getAttribute("actualizar");

	CRUDLibro crl = new CRUDLibro();
	CRUDCategoria crc = new CRUDCategoria();
	
	boolean bandera = false;

	String titulo = request.getParameter("titulo");
	String descripcion = request.getParameter("descripcion");
	int stock = Integer.valueOf(request.getParameter("stock"));
	double price = Double.valueOf(request.getParameter("precio"));
	int id_cat = Integer.valueOf(request.getParameter("categoria"));
	
	Categoria categoria = crc.getCategoria(id_cat);
	
	Libro newLibro = new Libro(titulo, descripcion, stock, price, categoria);
	
	newLibro.setId(id);
	
	for(Libro l: crl.getLibros()){
		if(l.getTitulo().equals(titulo)){
			session.setAttribute("error","libro_existente");
			bandera = true;
		}
	}
	
	if(!bandera){
		crl.updateLibro(newLibro);
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("Error");
	}
	

%>

</body>
</html>