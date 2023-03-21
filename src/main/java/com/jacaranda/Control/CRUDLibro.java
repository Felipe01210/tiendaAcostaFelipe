package com.jacaranda.Control;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.jacaranda.Clases.Categoria;
import com.jacaranda.Clases.Libro;

public class CRUDLibro {
	
private static Session session = CRUDSession.getSession();
	
	public static void saveElemento(String nombre, String descripcion, int stock, double precio, Categoria categoria) {
		Libro libro = new Libro(nombre,descripcion,stock,precio,categoria);
		session.getTransaction().begin();
		session.save(libro);
		session.getTransaction().commit();
	}
	
	public static Libro getLibro(int id) {
		Libro res = session.get(Libro.class, id);
		return res;
	}
	
	public static List<Libro> getLibros(){
		List<Libro> listaLibros = new ArrayList<>();
		Libro libro;
		int id = 1;
		do {
			libro = session.get(Libro.class, id);
			if(libro != null) {
				listaLibros.add(libro);
			}
			id++;
		}while(libro != null);
		return listaLibros;
	}
	
	public static void deleteLibro(int id) {
		Libro libro = session.get(Libro.class, id);
		session.getTransaction().begin();
		session.delete(libro);
		session.getTransaction().commit();
	}

}
