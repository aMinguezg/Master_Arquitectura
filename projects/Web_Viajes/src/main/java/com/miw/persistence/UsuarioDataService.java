package com.miw.persistence;

import java.util.Vector;

import com.miw.model.Usuario;

public interface UsuarioDataService {
		public Vector<Usuario> getUsuarios() throws Exception;

		//public CreaReserva newBook(CreaReserva book) throws Exception;
}
