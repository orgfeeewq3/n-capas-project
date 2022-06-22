package com.uca.spring.models.entities;

public class Facultad {
	private Integer id;
	private String nombre;
	
	public Facultad(Integer id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}

	public Facultad() {
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
	
	
}
