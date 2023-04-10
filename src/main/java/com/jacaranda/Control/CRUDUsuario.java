package com.jacaranda.Control;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.Clases.Libro;
import com.jacaranda.Clases.Usuario;

public class CRUDUsuario {
	
private Session session;
	

	public CRUDUsuario() {
		CRUDSession crs = new CRUDSession();
		this.session = crs.getSession();
	}

	public String getMd5(String input) {
		String pass = null;
		if(input!=null) {
			pass = DigestUtils.md5Hex(input);
		}
		return pass;
	}
	
	public void saveUser(String nombre,String apellidos, String password, LocalDate fecha_nac, String genero) {
		Usuario usuario = new Usuario(nombre, apellidos, password, fecha_nac, genero);
		session.getTransaction().begin();
		session.save(usuario);
		session.getTransaction().commit();
	}
	
	public Usuario getUser(String name) {
		Usuario res =(Usuario) session.get(Usuario.class, name);
		return res;
	}
	
	public List<Usuario> getUsers(){
		Query<Usuario> query = session.createQuery("SELECT p FROM usuario p");
		ArrayList<Usuario> listaUsuario = (ArrayList<Usuario>) query.getResultList();
		return listaUsuario;
	}
	
	public void deleteUser(int id) {
		Usuario usuario = (Usuario) session.get(Usuario.class, id);
		session.getTransaction().begin();
		session.delete(usuario);
		session.getTransaction();
	}

}
