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
@Table(name="TELEFONO")
public class Telefono {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idTelefono;
	private int idTipo;
	
	
	@ManyToOne
	@JoinColumn(name = "idcliente")
	private Cliente cliente;


	public int getIdTelefono() {
		return idTelefono;
	}


	public void setIdTelefono(int idTelefono) {
		this.idTelefono = idTelefono;
	}


	public int getIdTipo() {
		return idTipo;
	}


	public void setIdTipo(int idTipo) {
		this.idTipo = idTipo;
	}


	public Cliente getCliente() {
		return cliente;
	}


	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
 
	
	
}
