package com.jacaranda.Serv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Error
 */
@WebServlet("/Error")
public class Error extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Error() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
		HttpSession sesion = request.getSession();
		String razon = (String) sesion.getAttribute("error");
		String msg = "";
		
		switch(razon) {
		case("libro_existente"):
			msg = "El titulo que ha intentado introducir ya esta registrado";
		break;
		case("categoria_existente"):
			msg = "El nombre de categoria que ha intentado introducir ya esta registrado";
		break;
		default:
			msg = "Error desconocido";
		break;
		}
		
		PrintWriter out = response.getWriter();
		
		out.append(
					"<!DOCTYPE html>"
					+"<html>"
					+"<head>"
					+"<meta charset=\"UTF-8\">"
					+"<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ\" crossorigin=\"anonymous\">\n"
					+"</head>"
					+"<body>"
					+"<header class=\"row\">\n"
					+ "	<div class=\"col-4\">\n"
					+ "		<h3>Libros del Barco</h3>\n"
					+ "	</div>\n"
					+ "	<div class=\"col-3\">\n"
					+ "		<a href=\"catalogo_cat.jsp\"><button>Ver Categorias</button></a>\n"
					+ "	</div>\n"
					+ "	<div class=\"col-2\">\n"
					+ "	</div>\n"
					+ "	<div class=\"col-1\">\n"
					+ "		<a href=\"carrito.jsp\"><button>Carrito</button></a>\n"
					+ "	</div>\n"
					+ "	<div class=\"col-2\">\n"
					+ "		<a href=\"logoutexe.jsp\"><button>Log Out</button></a>\n"
					+ "	</div>\n"
					+ "</header>"
					+ "<div class=\"container formulario centrado\">\n"
					+ "    \n"
					+ "        <div class=\"row d-flex justify-content-center h-100\">\n"
					+ "            <div class=\"col-12 b-right container h-100\">\n"
					+ "                <form class=\"col-12 h-100\" action=\"index.jsp\" method=\"post\">\n"
					+ "                    <br>\n"
					+ "                    <h3>ERROR EN EL PROCESO</h3>\n"
					+ "                    <hr>\n"
					+ "                    <br>\n"
					+ msg
					+ "                    <br>\n"
					+ "                    <br>\n"
					+ "                    <button class=\"w-5 align-bottom\" type=\"submit\">CONFIRM</button>\n"
					+ "                </form>\n"
					+ "            </div>\n"
					+ "        </div>\n"
					+ "    </div>"
					+"</body>"
					+"</html>"
				);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
