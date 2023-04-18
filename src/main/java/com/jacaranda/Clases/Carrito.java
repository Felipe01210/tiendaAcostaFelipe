package com.jacaranda.Clases;

import java.util.ArrayList;
import java.util.Objects;

public class Carrito {
	
	private String nombre_user;
	private ArrayList<ItemCarrito> cesta = new ArrayList<ItemCarrito>();
	
	public Carrito() {
		super();
	}
	
	public Carrito(String nombre) {
		super();
		this.nombre_user = nombre;
	}
	
	//METODOS
	
	public void addItem(ItemCarrito item) {
		this.cesta.add(item);
	}
	
	public void deleteItem(int posicion) {
		this.cesta.remove(posicion);
	}
	
	//GETTERS & SETTERS

	public String getNombre_user() {
		return nombre_user;
	}

	public void setNombre_user(String nombre) {
		this.nombre_user = nombre;
	}

	public ArrayList<ItemCarrito> getCesta() {
		return cesta;
	}

	public void setCesta(ArrayList<ItemCarrito> cesta) {
		this.cesta = cesta;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cesta, nombre_user);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Carrito other = (Carrito) obj;
		return Objects.equals(cesta, other.cesta) && Objects.equals(nombre_user, other.nombre_user);
	}

	

}
