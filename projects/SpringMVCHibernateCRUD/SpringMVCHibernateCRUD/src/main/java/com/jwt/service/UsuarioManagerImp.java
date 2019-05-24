package com.jwt.service;

import java.util.List;

import com.jwt.dao.UsuarioDAO;
import com.jwt.model.Usuario;
 
 

public class UsuarioManagerImp implements UsuarioManager {
	private UsuarioDAO usuarioDAO;

	@Override
	public void addUser(Usuario p) {
		// TODO Auto-generated method stub
		usuarioDAO.addUser(p);
	}

	@Override
	public void updateUser(Usuario p) {
		// TODO Auto-generated method stub
		usuarioDAO.updateUser(p);
	}

	@Override
	public List<Usuario> listUsers() {
		// TODO Auto-generated method stub
		return usuarioDAO.listUsers();
	}

	@Override
	public Usuario getUserById(int id) {
		// TODO Auto-generated method stub
		return usuarioDAO.getUserById(id);
	}

	@Override
	public void removeUser(int id) {
		// TODO Auto-generated method stub
		usuarioDAO.removeUser(id);
	}

	@Override
	public Usuario getUserByLogin(String login) {
		// TODO Auto-generated method stub
		return usuarioDAO.getUserByLogin(login);
	}

	 

}
