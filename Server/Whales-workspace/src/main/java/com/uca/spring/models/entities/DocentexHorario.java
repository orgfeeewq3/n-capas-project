package com.uca.spring.models.entities;

public class DocentexHorario {
	private String carnet_docente;
	private Integer id_horario;
	
	public DocentexHorario(String carnet_docente, Integer id_horario) {
		super();
		this.carnet_docente = carnet_docente;
		this.id_horario = id_horario;
	}

	public DocentexHorario() {
		super();
	}

	public String getCarnet_docente() {
		return carnet_docente;
	}

	public void setCarnet_docente(String carnet_docente) {
		this.carnet_docente = carnet_docente;
	}

	public Integer getId_horario() {
		return id_horario;
	}

	public void setId_horario(Integer id_horario) {
		this.id_horario = id_horario;
	}
	
	
}
