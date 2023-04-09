<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.CRUDSession" %>
<%@ page import="com.jacaranda.Control.CRUDLibro" %>
<%@ page import="com.jacaranda.Clases.Libro" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>Nice</h3>

<ul>

<%
	
	CRUDLibro crl = new CRUDLibro();

	List<Libro> listaLibro = crl.getLibros();
	for(int i = 0; i< listaLibro.size(); i++){
		Libro libro = listaLibro.get(i);
		%>
		
		<li>
			<span><%=libro.getTitulo() %></span>
		</li>
		
		<%
	}

%>

</ul>

</body>
</html>