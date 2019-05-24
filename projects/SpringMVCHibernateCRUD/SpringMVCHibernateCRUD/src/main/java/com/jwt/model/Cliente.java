package com.jwt.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

 
@Entity
@Table(name="CLIENTE")
public class Cliente {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idCliente;
	private String nombre;
	private String primerApellido;
	private String segundoApellido;
	private Date fechaEntrada;
	private Date fechaSalida;
	private String sexo;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "idCliente")
	private CentroTuristico centro;

	@OneToMany(cascade= CascadeType.ALL)
	@JoinColumn(name="idCliente")
 	private List<Correo> correosElectronicos;

	@OneToMany(cascade= CascadeType.ALL)
	@JoinColumn(name="idCliente")
 	private List<Mascota> mascotas;


	@OneToMany(cascade= CascadeType.ALL)
	@JoinColumn(name="idCliente")
 	private List<Telefono> telefonos;


	public int getIdCliente() {
		return idCliente;
	}


	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getPrimerApellido() {
		return primerApellido;
	}


	public void setPrimerApellido(String primerApellido) {
		this.primerApellido = primerApellido;
	}


	public String getSegundoApellido() {
		return segundoApellido;
	}


	public void setSegundoApellido(String segundoApellido) {
		this.segundoApellido = segundoApellido;
	}


	public Date getFechaEntrada() {
		return fechaEntrada;
	}


	public void setFechaEntrada(Date fechaEntrada) {
		this.fechaEntrada = fechaEntrada;
	}


	public Date getFechaSalida() {
		return fechaSalida;
	}


	public void setFechaSalida(Date fechaSalida) {
		this.fechaSalida = fechaSalida;
	}


	public String getSexo() {
		return sexo;
	}


	public void setSexo(String sexo) {
		this.sexo = sexo;
	}


	public CentroTuristico getCentro() {
		return centro;
	}


	public void setCentro(CentroTuristico centro) {
		this.centro = centro;
	}


	public List<Correo> getCorreosElectronicos() {
		return correosElectronicos;
	}


	public void setCorreosElectronicos(List<Correo> correosElectronicos) {
		this.correosElectronicos = correosElectronicos;
	}


	public List<Mascota> getMascotas() {
		return mascotas;
	}


	public void setMascotas(List<Mascota> mascotas) {
		this.mascotas = mascotas;
	}


	public List<Telefono> getTelefonos() {
		return telefonos;
	}


	public void setTelefonos(List<Telefono> telefonos) {
		this.telefonos = telefonos;
	}

 


}
