package com.uca.spring.models.entities;

public class Carrera {
	private Integer id;
	private String nombre;
	private Integer id_facultad;
	
	public Carrera(Integer id, String nombre, Integer id_facultad) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.id_facultad = id_facultad;
	}
	
	public Carrera() {
		super();
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Integer getId_facultad() {
		return id_facultad;
	}
	public void setId_facultad(Integer id_facultad) {
		this.id_facultad = id_facultad;
	}
	
	
}
