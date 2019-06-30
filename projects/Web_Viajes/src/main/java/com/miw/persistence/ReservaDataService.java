package com.miw.persistence;

import java.util.List;
import java.util.Vector;

import com.miw.model.Reserva;
import com.miw.model.Viaje;

public interface ReservaDataService {
		public Vector<Reserva> getReservas() throws Exception;
		int saveReserva(Reserva reserva) throws Exception;
		public String sendReservaByEmail(Reserva reserva, Viaje viajeIda, Viaje viajeVuelta);
		Reserva getReservaByLocalizador(String localizador) throws Exception;
		List<String> get3Popular() throws Exception;
		List<Viaje> getHistorial(String email) throws Exception;
		int deleteReserva(Reserva reserva) throws Exception;

 }
