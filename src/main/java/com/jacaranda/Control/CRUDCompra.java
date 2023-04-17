package com.jacaranda.Control;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.Clases.Compra;
import com.jacaranda.Clases.Libro;
import com.jacaranda.Clases.Usuario;

public class CRUDCompra {
	
	private Session session;

	public CRUDCompra() {
		CRUDSession crs = new CRUDSession();
		this.session = crs.getSession();
	}
	
	public void saveCompra(Usuario usuario, Libro libro, int cantidad, double precio, LocalDate fecha) {
		Compra compra = new Compra(usuario,libro,cantidad,precio,fecha);
		session.getTransaction().begin();
		session.save(compra);
		session.getTransaction().commit();
	}

	
	public List<Compra> getCompras(Usuario usuario){
		Query<Compra> query = session.createQuery("SELECT p FROM compra p WHERE nombre_user = '"+ usuario.getNombre()+ "'", Compra.class);
		ArrayList<Compra> listaCompras = (ArrayList<Compra>) query.getResultList();
		return listaCompras;
	}
	
}
