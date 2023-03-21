package com.jacaranda.Clases;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="libro")
public class Libro {

	@Id 
	int id;
	private String titulo;
	private String descripcion;
	private int stock;
	private double price;
	@ManyToOne
	@JoinColumn(name="categoria")
	private Categoria categoria;
	
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
	
	
	
	
}
