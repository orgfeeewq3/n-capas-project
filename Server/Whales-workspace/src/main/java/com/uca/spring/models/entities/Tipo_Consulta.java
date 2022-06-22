package com.uca.spring.models.entities;

public class Tipo_Consulta {
	private Integer id;
	private String tipo_consulta;
	
	public Tipo_Consulta(Integer id, String tipo_consulta) {
		super();
		this.id = id;
		this.tipo_consulta = tipo_consulta;
	}

	public Tipo_Consulta() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTipo_consulta() {
		return tipo_consulta;
	}

	public void setTipo_consulta(String tipo_consulta) {
		this.tipo_consulta = tipo_consulta;
	}
	
	
}
