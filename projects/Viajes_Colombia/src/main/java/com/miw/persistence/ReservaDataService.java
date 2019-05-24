package com.miw.persistence;

import java.util.Vector;

import com.miw.model.Reserva;

public interface ReservaDataService {
		public Vector<Reserva> getReservas() throws Exception;

		//public CreaReserva newBook(CreaReserva book) throws Exception;
}
