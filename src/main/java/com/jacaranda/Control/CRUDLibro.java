package com.jacaranda.Control;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.Clases.Categoria;
import com.jacaranda.Clases.Libro;

public class CRUDLibro {
	
private Session session;

	public CRUDLibro() {
		CRUDSession crs = new CRUDSession();
		this.session = crs.getSession();
	}
	
	public void saveLibro(String nombre, String descripcion, int stock, double precio, Categoria categoria) {
		Libro libro = new Libro(nombre,descripcion,stock,precio,categoria);
		session.getTransaction().begin();
		session.save(libro);
		session.getTransaction().commit();
	}
	
	public Libro getLibro(int id) {
		Libro res = session.get(Libro.class, id);
		return res;
	}
	
	public List<Libro> getLibros(){
		Query<Libro> query = session.createQuery("SELECT p FROM libro p");
		ArrayList<Libro> listaLibros = (ArrayList<Libro>) query.getResultList();
		return listaLibros;
	}
	
	public  void updateLibro(Libro libro) {
        try {
        	session.getTransaction().begin();
        	session.update(libro);
        	session.getTransaction().commit();
		} catch (Exception e) {

			e.printStackTrace();
			session.getTransaction().rollback();
		}
        
        
    }
	
	public void deleteLibro(int id) {
		Libro libro = session.get(Libro.class, id);
		session.getTransaction().begin();
		session.delete(libro);
		session.getTransaction().commit();
	}

}
