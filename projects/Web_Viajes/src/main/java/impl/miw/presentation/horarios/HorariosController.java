package impl.miw.presentation.horarios;


import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miw.business.ViajeManagerService;
import com.miw.model.Reserva;
import com.miw.model.Viaje;


@Controller
@RequestMapping("horarios")

public class HorariosController {
	@Autowired 
	ViajeManagerService viajeManagerService;

	public void setViajeManagerService(ViajeManagerService viajeManagerService) {
		this.viajeManagerService = viajeManagerService;
	}

	@GetMapping
	public String horarios( @ModelAttribute("viaje") Viaje viaje, Model model) throws Exception {

		Vector<Viaje> listaIda = viajeManagerService.getViajesSeleccionado(viaje.getOrigen(),viaje.getDestino(),viaje.getFecha(),viaje.getPasajeros());
		Vector<Viaje> listaVuelta = null;
		model.addAttribute("viajeSearch", viaje);
		// We store the list of books in teh model.
		
		model.addAttribute("listaida",listaIda);
		
		if(viaje.getFechaVuelta() != null && viaje.getFechaVuelta() != "" && viaje.getFechaVuelta().length() > 0) {
			listaVuelta = viajeManagerService.getViajesSeleccionado(viaje.getDestino(),viaje.getOrigen(),viaje.getFechaVuelta(),viaje.getPasajeros());
			model.addAttribute("listavuelta",listaVuelta);
		}

		model.addAttribute("reserva",new Reserva());
		if(listaIda.size() <= 0) {
			return "emptyViajes";

		}
		else {
			return "horarios";

		}
		// We return the name of the view. 
 
	}



}
