package com.miw.business;


import java.util.List;
import java.util.Vector;

import com.miw.model.Reserva;
import com.miw.model.Viaje;

public interface ReservaManagerService {
	public Vector<Reserva> getReservas() throws Exception;

	//public abstract ArrayList<CreaReserva> getSpecialOffer() throws Exception;	
	
	//public CreaReserva newBook(CreaReserva book) throws Exception;
	
 	int saveReserva(Reserva reserva);
	String sendReservaByEmail(Reserva reserva) throws NumberFormatException, Exception;
	Reserva getReservaByLocalizador(String localizador) throws Exception;
	List<String> get3Popular() throws Exception;
	List<Viaje> getHistorial(String email) throws Exception;
	int deleteReserva(Reserva reserva) throws Exception;
}
