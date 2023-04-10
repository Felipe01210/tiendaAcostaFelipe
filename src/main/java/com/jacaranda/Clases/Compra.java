package com.jacaranda.Clases;

import java.time.LocalDate;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="compra")
@IdClass(IdCompra.class)
public class Compra {
	
	@Id
	@ManyToOne
	@JoinColumn(name="nombre_user")
	private Usuario usuario;
	@Id
	@ManyToOne
	@JoinColumn(name="id_libro")
	private Libro libro;
	@Id
	private int cantidad;
	@Id
	private double precio;
	@Id
	private LocalDate fecha;
	
	public Compra() {
		super();
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
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

	public LocalDate getFecha() {
		return fecha;
	}

	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cantidad, fecha, libro, precio, usuario);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Compra other = (Compra) obj;
		return cantidad == other.cantidad && Objects.equals(fecha, other.fecha) && Objects.equals(libro, other.libro)
				&& Double.doubleToLongBits(precio) == Double.doubleToLongBits(other.precio)
				&& Objects.equals(usuario, other.usuario);
	}
	
	

}
