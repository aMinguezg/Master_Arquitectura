/* Generated by Together */

package impl.miw.business.reservamanager;


import java.util.List;
import java.util.Vector;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;

import com.google.gson.Gson;
import com.miw.business.ReservaManagerService;
import com.miw.model.Reserva;
import com.miw.model.Viaje;
import com.miw.persistence.ReservaDataService;
import com.miw.persistence.ViajeDataService;


public class ReservaManager implements ReservaManagerService {

	@Autowired
	private ReservaDataService reservaDataService;

	@Autowired
	private ViajeDataService viajeDataService;


	public void setReservaDataService(ReservaDataService reservaDataService) {
		System.out.println("Persistencia reserva");
		this.reservaDataService = reservaDataService;
	}

	public Vector<Reserva> getReservas() throws Exception {

		Vector<Reserva> reservas = reservaDataService.getReservas();

		return reservas;
	}


	public int saveReserva(Reserva reserva) {
		int resultado = 0;
		//incorporamos el localizador
		reserva.setLocalizador(java.util.UUID.randomUUID().toString().substring(0, 6));


		try {
			resultado = reservaDataService.saveReserva(reserva);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return resultado;
	}



	public String sendReservaByEmail(Reserva reserva) throws  Exception {

		Viaje viajeIda = viajeDataService.getViajeById(Integer.parseInt(reserva.getIdViajeIda().trim()));
		Viaje viajeVuelta = null;

		if(reserva.getIdViajeVuelta()!= null && reserva.getIdViajeVuelta() != "" && !reserva.getIdViajeVuelta().contains("null"))
		{
			viajeVuelta = viajeDataService.getViajeById(Integer.parseInt(reserva.getIdViajeVuelta().trim()));
		}

		return reservaDataService.sendReservaByEmail(reserva, viajeIda, viajeVuelta);
	}

	public Reserva getReservaByLocalizador(String localizador) throws Exception {
		return reservaDataService.getReservaByLocalizador(localizador);
	}

	public List<String> get3Popular() throws Exception {
 		return reservaDataService.get3Popular();
	}

	public List<Viaje> getHistorial(String email) throws Exception {
		return reservaDataService.getHistorial(email);
	}

	public int deleteReserva(Reserva reserva) throws Exception {
 		return reservaDataService.deleteReserva(reserva);
	}


}
