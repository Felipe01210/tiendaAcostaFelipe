package com.jacaranda.Control;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.Clases.Categoria;

public class CRUDCategoria {
	
private static Session session = CRUDSession.getSession();
	
	public static void saveCategoria(String nombre, String descripcion) {
		Categoria categoria = new Categoria(nombre,descripcion);
		session.getTransaction().begin();
		session.save(categoria);
		session.getTransaction().commit();
	}
	
	public static Categoria getCategoria(int id) {
		Categoria res = session.get(Categoria.class, id);
		return res;
	}
	
	public static List<Categoria> getCategorias(){
		Query<Categoria> query = session.createQuery("SELECT p FROM categoria p");
		ArrayList<Categoria> listaCategorias = (ArrayList<Categoria>) query.getResultList();
		return listaCategorias;
	}
	
	public static void deleteCategoria(int id) {
		Categoria categoria = session.get(Categoria.class, id);
		session.getTransaction().begin();
		session.delete(categoria);
		session.getTransaction().commit();
	}

}
