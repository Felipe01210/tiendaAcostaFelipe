package com.jacaranda.Clases;

import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity(name="libro")
public class Libro {

	@Id 
	private int id;
	private String titulo;
	private String descripcion;
	private int stock;
	private double price;
	@ManyToOne
	@JoinColumn(name="categoria")
	private Categoria categoria;
	@OneToMany(mappedBy="libro",cascade = CascadeType.ALL,orphanRemoval = true)
	private List<Compra> listaCompra;
	
	public Libro() {
		super();
	}
	
	public Libro(String titulo, String descripcion, int stock, double price, Categoria categoria) {
		super();
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.stock = stock;
		this.price = price;
		this.categoria = categoria;
	}
	
	//GETTERS & SETTERS

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(categoria, descripcion, id, price, stock, titulo);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Libro other = (Libro) obj;
		return Objects.equals(categoria, other.categoria) && Objects.equals(descripcion, other.descripcion)
				&& id == other.id && Double.doubleToLongBits(price) == Double.doubleToLongBits(other.price)
				&& stock == other.stock && Objects.equals(titulo, other.titulo);
	}
	
	
	
	
}
