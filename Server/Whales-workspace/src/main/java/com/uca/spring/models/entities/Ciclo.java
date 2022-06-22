package com.uca.spring.models.entities;

public class Ciclo {
	private Integer id;
	private String ciclo;
	public Ciclo(Integer id, String ciclo) {
		super();
		this.id = id;
		this.ciclo = ciclo;
	}
	
	public Ciclo() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCiclo() {
		return ciclo;
	}

	public void setCiclo(String ciclo) {
		this.ciclo = ciclo;
	}
	
	
}
