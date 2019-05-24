package com.jwt.dao;

import java.util.List;

import com.jwt.model.Usuario;

 
 
public interface UsuarioDAO {
	public void addUser(Usuario p);
	public void updateUser(Usuario p);
	public List<Usuario> listUsers();
	public Usuario getUserById(int id);
	public void removeUser(int id);
	public Usuario getUserByLogin(String login);
}
