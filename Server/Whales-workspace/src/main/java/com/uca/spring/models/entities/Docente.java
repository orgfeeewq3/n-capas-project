package com.uca.spring.models.entities;

public class Docente {
	String carnet;
	String nombre;
	String email;
	String password;
	
	public Docente(String carnet, String nombre, String email, String password) {
		super();
		this.carnet = carnet;
		this.nombre = nombre;
		this.email = email;
		this.password = password;
	}
	
	public Docente() {
		super();
	}
	
	public String getCarnet() {
		return carnet;
	}
	public void setCarnet(String carnet) {
		this.carnet = carnet;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
