package com.uca.spring.models.entities;

public class Materia {
	
	private Integer id;
	private String nombre;
	private Integer ciclo;
	
	public Materia(Integer id, String nombre, Integer ciclo) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.ciclo = ciclo;
	}
	
	public Materia() {
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
	public Integer getCiclo() {
		return ciclo;
	}
	public void setCiclo(Integer ciclo) {
		this.ciclo = ciclo;
	}
	
	
}
