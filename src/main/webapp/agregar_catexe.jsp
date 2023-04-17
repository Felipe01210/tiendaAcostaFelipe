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
	CRUDCategoria crc = new CRUDCategoria();

	String nombre = request.getParameter("nombre");
	String descripcion = request.getParameter("descripcion");
	
	boolean bandera = false;
	
	for(Categoria c: crc.getCategorias()){
		if(c.getName().equals(nombre)){
			sesion.setAttribute("error","categoria_existente");
			bandera = true;
		}
	}
	
	if(!bandera){
	crc.saveCategoria(nombre, descripcion);
	response.sendRedirect("catalogo_cat.jsp");	
	}else{
		response.sendRedirect("Error");
	}
	

%>

</body>
</html>