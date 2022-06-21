package com.uca.spring.models.entities;

public class Horario {
	private Integer id;
	private String name;
	public Horario(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Horario() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
