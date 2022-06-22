package com.uca.spring.models.entities;

public class MateriaxDocente {
	
	private String carnet_docente;
	private String id_materia;
	public MateriaxDocente(String carnet_docente, String id_materia) {
		super();
		this.carnet_docente = carnet_docente;
		this.id_materia = id_materia;
	}
	
	public MateriaxDocente() {
		super();
	}
	
	public String getCarnet_docente() {
		return carnet_docente;
	}
	public void setCarnet_docente(String carnet_docente) {
		this.carnet_docente = carnet_docente;
	}
	public String getId_materia() {
		return id_materia;
	}
	public void setId_materia(String id_materia) {
		this.id_materia = id_materia;
	}
	
	
}
