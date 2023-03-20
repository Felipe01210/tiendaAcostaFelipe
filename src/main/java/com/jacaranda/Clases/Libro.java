package com.jacaranda.Clases;

import javax.persistence.Entity;

@Entity(name="libro")
public class Libro {

	private int id;
	private String titulo;
	private String descripcion;
	private int stock;
	
	
}
