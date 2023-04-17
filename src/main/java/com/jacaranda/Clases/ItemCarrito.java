package com.jacaranda.Clases;

import java.util.Objects;

public class ItemCarrito {
	
	private Libro libro;
	private int cantidad;
	private double precio;
	
	public ItemCarrito() {
		super();
	}
	
	public ItemCarrito(Libro libro, int cantidad) {
		super();
		this.libro = libro;
		this.cantidad = cantidad;
		this.precio = libro.getPrice()*cantidad;
	}

	public Libro getLibro() {
		return libro;
	}

	public void setLibro(Libro libro) {
		this.libro = libro;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cantidad, libro, precio);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ItemCarrito other = (ItemCarrito) obj;
		return cantidad == other.cantidad && Objects.equals(libro, other.libro)
				&& Double.doubleToLongBits(precio) == Double.doubleToLongBits(other.precio);
	}
	
	

}
