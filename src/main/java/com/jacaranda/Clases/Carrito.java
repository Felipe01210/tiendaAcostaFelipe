package com.jacaranda.Clases;

import java.util.ArrayList;
import java.util.Objects;

public class Carrito {
	
	private int user_id;
	private ArrayList<ItemCarrito> cesta = new ArrayList<ItemCarrito>();
	
	public Carrito() {
		super();
	}
	
	public Carrito(int id) {
		super();
		this.user_id = id;
	}
	
	//METODOS
	
	public void addItem(ItemCarrito item) {
		this.cesta.add(item);
	}
	
	public void deleteItem(int posicion) {
		this.cesta.remove(posicion);
	}
	
	//GETTERS & SETTERS

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public ArrayList<ItemCarrito> getCesta() {
		return cesta;
	}

	public void setCesta(ArrayList<ItemCarrito> cesta) {
		this.cesta = cesta;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cesta, user_id);
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
		return Objects.equals(cesta, other.cesta) && user_id == other.user_id;
	}
	
	

}
