<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.CRUDUsuario" %>
<%@ page import="com.jacaranda.Control.CRUDSession" %>
<%@ page import="com.jacaranda.Clases.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	CRUDUsuario cru = new CRUDUsuario();	

	String nombre = request.getParameter("nombre");
	String contrasenna = request.getParameter("password");
	String md5 = cru.getMd5(contrasenna);
	
	HttpSession sesion = request.getSession();
	
	Usuario usuario = cru.getUser(nombre);
	
	if(usuario.getPassword().equals(md5)){
	
	sesion.setAttribute("login", true);
	sesion.setAttribute("usuario",usuario);
	
	Carrito carrito = new Carrito(nombre);
	
	sesion.setAttribute("carrito",carrito);
	
	response.sendRedirect("index.jsp");
	
	}else{
		sesion.setAttribute("error","login_error");
		response.sendRedirect("Error");
	}
	%>

</body>
</html>