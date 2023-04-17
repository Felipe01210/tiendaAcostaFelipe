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

	CRUDCategoria crc = new CRUDCategoria();

	int id = (Integer) sesion.getAttribute("borrar");
	crc.deleteCategoria(id);
	
	response.sendRedirect("catalogo_cat.jsp");
		
	}catch(Exception e){
		response.sendRedirect("Error");
	}


%>

</body>
</html>