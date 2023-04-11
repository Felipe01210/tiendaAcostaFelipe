package com.jacaranda.Clases;

import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="categoria")
public class Categoria {
	
	@Id
	private int id;
	private String name;
	private String descripcion;
	@OneToMany(mappedBy="categoria",cascade = CascadeType.ALL,orphanRemoval = true)
	private List<Libro> listaLibros;
	
	public Categoria() {
		super();
	}
	
	public Categoria(String name, String descripcion) {
		super();
		this.name = name;
		this.descripcion = descripcion;
	}
	
	//GETTERS & SETTERS

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public List<Libro> getListaLibros() {
		return listaLibros;
	}

	public void setListaLibros(List<Libro> listaLibros) {
		this.listaLibros = listaLibros;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(descripcion, id, listaLibros, name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Categoria other = (Categoria) obj;
		return Objects.equals(descripcion, other.descripcion) && id == other.id
				&& Objects.equals(listaLibros, other.listaLibros) && Objects.equals(name, other.name);
	}
	
	

}
