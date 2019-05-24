package com.jwt.service;

import java.util.List;

import com.jwt.model.Cliente;

 
 
public interface ClienteManager {
	public void addCliente(Cliente p);
	public void updateCliente(Cliente p);
	public List<Cliente> listUsers();
	public Cliente getUserById(int id);
	public void removeCliente(int id);
 }
