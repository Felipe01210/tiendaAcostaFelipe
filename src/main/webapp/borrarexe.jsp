<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.Control.CRUDLibro" %>
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

	CRUDLibro crl = new CRUDLibro();

	int id = (Integer) sesion.getAttribute("borrar");
	crl.deleteLibro(id);
	
	response.sendRedirect("index.jsp");
		
	}catch(Exception e){
		response.sendRedirect("Error");
	}


%>

</body>
</html>