package com.jacaranda.Clases;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name= "usuario")
public class Usuario {

	@Id
	private String nombre;
	private String apellidos;
	private String password;
	private LocalDate fecha_nac;
	private String genero;
	private String rol;
	@OneToMany(mappedBy="usuario",cascade = CascadeType.ALL,orphanRemoval = true)
	private List<Compra> listaCompra;
	
	public Usuario() {
		super();
	}
	
	public Usuario(String nombre, String apellidos, String password, LocalDate fecha_nac, String genero) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.password = password;
		this.fecha_nac = fecha_nac;
		this.genero = genero;
		this.rol = "USER";
	}
	
	//GETTERS & SETTERS
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public LocalDate getFecha_nac() {
		return fecha_nac;
	}
	public void setFecha_nac(LocalDate fecha_nac) {
		this.fecha_nac = fecha_nac;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public String getRol() {
		return rol;
	}
	public void setRol(String rol) {
		this.rol = rol;
	}

	@Override
	public int hashCode() {
		return Objects.hash(apellidos, fecha_nac, genero, nombre, password, rol);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		return Objects.equals(apellidos, other.apellidos) && Objects.equals(fecha_nac, other.fecha_nac)
				&& Objects.equals(genero, other.genero) && Objects.equals(nombre, other.nombre)
				&& Objects.equals(password, other.password) && Objects.equals(rol, other.rol);
	}
	
	
	
}
