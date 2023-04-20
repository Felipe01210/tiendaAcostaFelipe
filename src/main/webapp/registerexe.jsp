<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.Clases.*" %>
<%@ page import="com.jacaranda.Control.CRUDUsuario" %>
<%@ page import="com.jacaranda.Control.CRUDSession" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		CRUDUsuario cru = new CRUDUsuario();
	
		Boolean bandera = true;
		
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String contrasenna = request.getParameter("password");
		String md5 = cru.getMd5(contrasenna);
		String contrasennaConf = request.getParameter("confirm_password");
		String fecha = request.getParameter("fecha_nac");
		LocalDate fecha_nac = null;
		
		try{
			fecha_nac = LocalDate.parse(fecha);
		}catch(Exception e){
			response.sendRedirect("Error");
		}
		
		
		String genero = request.getParameter("genero");
		
		HttpSession sesion = request.getSession();
		
		List<Usuario> listaUsuarios = cru.getUsers();
		
		for(int i = 0; i < listaUsuarios.size(); i++){
			String Tnombre = listaUsuarios.get(i).getNombre();
			if(nombre.equals(Tnombre)){
				bandera = false;
			}
		}
		
		if(contrasenna.equals(contrasennaConf) && bandera == true){
			
			cru.saveUser(nombre, apellidos, md5, fecha_nac, genero);
			
			sesion.setAttribute("login", true);
			sesion.setAttribute("usuario", new Usuario(nombre,apellidos,md5,fecha_nac,genero));
			
			Carrito carrito = new Carrito(nombre);
			
			sesion.setAttribute("carrito",carrito);
			
			response.sendRedirect("index.jsp");
			
		}else{
			sesion.setAttribute("error","register_error");
			response.sendRedirect("Error");
		}
	%>
</body>
</html>