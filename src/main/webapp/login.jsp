<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<style>
    .formulario{
        height: 75vh;
        width: 50vw;
        border-width: 1px;
        border-style: solid;
        border-radius: 10px;
        border-color: lightgray;
        margin-top: 5vh;
        box-shadow: 0px 5px 5px darkseagreen;
    }
    .centrado{
        text-align: center;
    }
    .b-right{
        border-right-width: 1px;
        border-right-style: solid;
        border-color: lightgray;
    }
    .gradient-custom{
        background: linear-gradient(cornflowerblue,darkseagreen);
    }
    .vertical-centrado{
        margin-top: 125px;
    }
</style>

<body>

	<header>
		<div class="container row">
			<div class=col-4>
				<h2>Libros del Barco</h2>
			</div>
		</div>
	</header>
	
	<hr>

    <div class="container formulario centrado">
    
        <div class="row d-flex justify-content-center h-100">
            <div class="col-12 col-md-6 b-right container h-100">
                <form class="col-12 h-100" action="loginexe.jsp" method="post">
                    <br>
                    <h3>LOG IN</h3>
                    <hr>
                    <br>
                    <span>Nombre:</span>
                    <br>
                    <input class="w-50" type="text" placeholder="example" name="nombre" id="nombre">
                    <br>
                    <br>
                    <span>Password:</span>
                    <br>
                    <input class="w-50" type="password" name="password" id="password">
                    <br>
                    <br>
                    <button class="w-5 align-bottom" type="submit">CONFIRM</button>
                    <br>
                    <br>
                    <span>Create your account <a href="register.jsp">here</a></span>
                </form>
            </div>
            <div class="col-6 gradient-custom container h-100 d-none d-md-block">
                <div class="vertical-centrado col-12">
                    <h4>The best way to get <br> your books without obstacles</h4>
                    <br>
                    <br>
                    <p>Our website offers you the best stories for your entertainment, with all the genres. Enter and enjoy our services today</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>