<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.Control.*" %>
<%@ page import="com.jacaranda.Clases.*" %>
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
		
		CRUDCategoria crc = new CRUDCategoria();
		
		boolean bandera = false;
		
		String name = request.getParameter("nombre");
		String descripcion = request.getParameter("descripcion");
		
		Categoria newCategoria = crc.getCategoria(id);
		
		newCategoria.setName(name);
		newCategoria.setDescripcion(descripcion);
		
		for(Categoria c: crc.getCategorias()){
			if(c.getName().equals(name)){
				session.setAttribute("error","categoria_existente");
				bandera = true;
			}
		}
		
		if(!bandera){
			crc.updateCategoria(newCategoria);
			response.sendRedirect("catalogo_cat.jsp");
		}else{
			response.sendRedirect("Error");
		}
		
		
%>

</body>
</html>