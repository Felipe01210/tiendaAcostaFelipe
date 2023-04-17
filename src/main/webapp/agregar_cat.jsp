<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Control.*" %>
<%@ page import="com.jacaranda.Clases.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<header class="row">
	<div class="col-4">
		<h3>Libros del Barco</h3>
	</div>
	<div class="col-3">
		<a href="catalogo_cat.jsp"><button>Ver Categorias</button></a>
	</div>
	<div class="col-2">
	</div>
	<div class="col-1">
		<a href="carrito.jsp"><button>Carrito</button></a>
	</div>
	<div class="col-2">
		<a href="logoutexe.jsp"><button>Log Out</button></a>
	</div>
</header>

<div class="container formulario centrado">
    
        <div class="row d-flex justify-content-center h-100">
            <div class="col-12 b-right container h-100">
                <form class="col-12 h-100" action="agregar_catexe.jsp" method="post">
                    <br>
                    <h3>AGREGAR CATEGORIA</h3>
                    <hr>
                    <br>
                    <span>Nombre:</span>
                    <br>
                    <input class="w-50" type="text" placeholder="Introduzca el nombre de la categoria" name="nombre">
                    <br>
                    <br>
                    <span>Descripcion:</span>
                    <br>
                    <input class="w-50" type="text" placeholder="Introduzca descripcion" name="descripcion">
                    <br>
                    <br>
                    <button class="w-5 align-bottom" type="submit">CONFIRM</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>