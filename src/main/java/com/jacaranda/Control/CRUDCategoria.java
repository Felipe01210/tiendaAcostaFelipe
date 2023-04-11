package com.jacaranda.Control;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.Clases.Categoria;

public class CRUDCategoria {
	
private Session session;

	public CRUDCategoria() {
		CRUDSession crs = new CRUDSession();
		this.session = crs.getSession();
	}
	
	public void saveCategoria(String nombre, String descripcion) {
		Categoria categoria = new Categoria(nombre,descripcion);
		session.getTransaction().begin();
		session.save(categoria);
		session.getTransaction().commit();
	}
	
	public Categoria getCategoria(int id) {
		Categoria res = session.get(Categoria.class, id);
		return res;
	}
	
	public List<Categoria> getCategorias(){
		Query<Categoria> query = session.createQuery("SELECT p FROM categoria p");
		ArrayList<Categoria> listaCategorias = (ArrayList<Categoria>) query.getResultList();
		return listaCategorias;
	}
	
	public void deleteCategoria(int id) {
		Categoria categoria = session.get(Categoria.class, id);
		session.getTransaction().begin();
		session.delete(categoria);
		session.getTransaction().commit();
	}

}
