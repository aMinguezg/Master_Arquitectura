package com.miw.business;


import java.util.Vector;

import com.miw.model.Reserva;

public interface ReservaManagerService {
	public Vector<Reserva> getReservas() throws Exception;

	//public abstract ArrayList<CreaReserva> getSpecialOffer() throws Exception;	
	
	//public CreaReserva newBook(CreaReserva book) throws Exception;

}
