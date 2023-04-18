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

	HttpSession sesion = request.getSession();

	try{
		
	CRUDLibro crl = new CRUDLibro();

	int id = Integer.valueOf(request.getParameter("id_comprar"));
	int cantidad = Integer.valueOf(request.getParameter("cantidad"));
	
	Libro libro = crl.getLibro(id);
	
	ItemCarrito newItem = new ItemCarrito(libro,cantidad);
	
	Carrito carrito = (Carrito) sesion.getAttribute("carrito");
	carrito.addItem(newItem);
	
	sesion.setAttribute("carrito",carrito);
	
	response.sendRedirect("carrito.jsp");
		
	}catch(Exception e){
		sesion.setAttribute("error","fallo_addcarrito");
		response.sendRedirect("Error");
	}


%>

</body>
</html>