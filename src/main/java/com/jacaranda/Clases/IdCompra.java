package com.jacaranda.Clases;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Objects;

public class IdCompra implements Serializable{
	
	private String usuario;
	private int libro;
	private int cantidad;
	private double precio;
	private LocalDate fecha;
	
	public IdCompra() {
		super();
	}
	
	public IdCompra(String nombre_user, int id_libro, int cantidad, double precio, LocalDate fecha) {
		super();
		this.usuario = nombre_user;
		this.libro = id_libro;
		this.cantidad = cantidad;
		this.precio = precio;
		this.fecha = fecha;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public int getLibro() {
		return libro;
	}

	public void setLibro(int libro) {
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

	public LocalDate getFecha() {
		return fecha;
	}

	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cantidad, fecha, libro, usuario, precio);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		IdCompra other = (IdCompra) obj;
		return cantidad == other.cantidad && Objects.equals(fecha, other.fecha) && libro == other.libro
				&& Objects.equals(usuario, other.usuario)
				&& Double.doubleToLongBits(precio) == Double.doubleToLongBits(other.precio);
	}

}
