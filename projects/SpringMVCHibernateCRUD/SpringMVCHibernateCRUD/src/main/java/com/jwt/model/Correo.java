package com.jwt.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="CORREO")
public class Correo {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idCorreo;
	private String correo;
	
	
	@ManyToOne
	@JoinColumn(name = "idcliente")
	private Cliente cliente;


	public int getIdCorreo() {
		return idCorreo;
	}


	public void setIdCorreo(int idCorreo) {
		this.idCorreo = idCorreo;
	}


	public String getCorreo() {
		return correo;
	}


	public void setCorreo(String correo) {
		this.correo = correo;
	}


	public Cliente getCliente() {
		return cliente;
	}


	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	
	 
	
	
	
}
