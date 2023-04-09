<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.Clases.Usuario" %>
<%@ page import="com.jacaranda.Control.CRUDUsuario" %>
<%@ page import="com.jacaranda.Control.CRUDSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		CRUDUsuario cru = new CRUDUsuario();
		
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String contrasenna = request.getParameter("password");
		String md5 = cru.getMd5(contrasenna);
		String contrasennaConf = request.getParameter("confirm_password");
		String fecha = request.getParameter("fecha_nac");
		//Falta transformar a date
		String genero = request.getParameter("genero");
		
		HttpSession sesion = request.getSession();
		
		if(contrasenna.equals(contrasennaConf)){
			cru.saveUser(nombre, apellidos, md5, fecha, genero);
			
			sesion.setAttribute("login", "true");
			sesion.setAttribute("usuario", new Usuario(nombre,apellidos,md5,fecha,genero));
			
			response.sendRedirect("catalogo.jsp");
			
		}
	%>
</body>
</html>