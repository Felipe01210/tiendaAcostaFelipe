<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.Control.CRUDCategoria" %>
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
		
		CRUDCategoria crc = new CRUDCategoria();
		
		String name = request.getParameter("nombre");
		String descripcion = request.getParameter("descripcion");
		
		Categoria newCategoria = crc.getCategoria(id);
		
		newCategoria.setName(name);
		newCategoria.setDescripcion(descripcion);
		
		crc.updateCategoria(newCategoria);
		
		response.sendRedirect("catalogo_cat.jsp");
		
		
	}catch(Exception e){
		response.sendRedirect("Error");
	}

%>

</body>
</html>