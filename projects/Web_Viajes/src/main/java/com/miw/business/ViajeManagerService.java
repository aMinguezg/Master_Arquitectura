package com.miw.business;



import java.util.Vector;

import com.miw.model.Viaje;

public interface ViajeManagerService {
	public Vector<Viaje> getViajes() throws Exception;
	public Vector<String> getCiudades(boolean tipo) throws Exception;
	public Vector<Viaje> getViajesSeleccionado(String ori,String dest,String fech) throws Exception;

	//public abstract ArrayList<CreaReserva> getSpecialOffer() throws Exception;	
	
	//public CreaReserva newBook(CreaReserva book) throws Exception;

}
