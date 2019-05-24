package com.miw.business;


import java.util.Vector;

import com.miw.model.Usuario;

public interface UsuarioManagerService {
	public Vector<Usuario> getUsuarios() throws Exception;

	//public abstract ArrayList<CreaReserva> getSpecialOffer() throws Exception;	
	
	//public CreaReserva newBook(CreaReserva book) throws Exception;

}
