package impl.miw.presentation.reserva;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.miw.business.ReservaManagerService;
import com.miw.business.ViajeManagerService;
import com.miw.model.Reserva;
import com.miw.model.Viaje;

@Controller
@RequestMapping("reserva")

public class ReservaController {
	@Autowired 
	ReservaManagerService reservaManagerService;
	
	@Autowired 
	ViajeManagerService viajeManagerService;
	
	public void setReservaManagerService(ReservaManagerService reservaManagerService) {
		this.reservaManagerService = reservaManagerService;
	}
	 
	
	
	@RequestMapping("/mail/{localizador}")
	@GetMapping
	public String sendReservaEmail(@PathVariable("localizador") String localizador, Model model) {
		
		try{
			Reserva r = reservaManagerService.getReservaByLocalizador(localizador);
			reservaManagerService.sendReservaByEmail(r);
			
			}
		catch (Exception e) {
			//model.addAttribute("errorMsg", e.toString());
			//return "error";
			e.printStackTrace();
		}
		return "emailExito";
		
	}
	
	
	@RequestMapping(value = "/historial", method = RequestMethod.GET)
	public String getViewHistorial(Model model) {
	 
		model.addAttribute("reserva",new Reserva());
		return "historial";
		
	}
	
	@RequestMapping(value = "/cancelar", method = RequestMethod.GET)
	public String getViewCancelar(Model model) {
	 
		model.addAttribute("reserva",new Reserva());
		return "cancelar";
		
	}
	
	@RequestMapping(value = "/cancelar", method = RequestMethod.POST)
	public String cancelarReserva(@ModelAttribute("reserva") Reserva reserva, Model model) {
		try {
			reservaManagerService.deleteReserva(reserva);
		} catch (Exception e) {
 			e.printStackTrace();
			//return "error";
		}
		
		return "cancelarOK";
		
	}

	
	@RequestMapping(value = "/historial/listado", method = RequestMethod.POST)
	public String getHistorial(@ModelAttribute("reserva") Reserva reserva, Model model) {
		try {
			List<Viaje> historial = reservaManagerService.getHistorial(reserva.getEmail());
			model.addAttribute("listaReserva",historial);
		} catch (Exception e) {
 			e.printStackTrace();
			return "error";
		}
		
		return "listaReservas";
		
	}
	
    @PostMapping
	public String confirmarReserva(@ModelAttribute("reserva") Reserva reserva, Model model) {
		
		System.out.println("Controlador CONF de la reserva.");
		 try { 
		reservaManagerService.saveReserva(reserva);
		//Reducimos los pasajeros de IDA
		viajeManagerService.reducirPasajeros(Integer.parseInt(reserva.getIdViajeIda()));
		
		//Recuperamos los datos del viaje de ida
		Viaje viajeIda = viajeManagerService.getViajeById(Integer.parseInt(reserva.getIdViajeIda()));
		
		//Reducimos los pasajeros de Vuelta
		if(reserva.getIdViajeVuelta() != null) {viajeManagerService.reducirPasajeros(Integer.parseInt(reserva.getIdViajeVuelta()));
		
		//Recuperamos losd datos del viaje de vuelta
		Viaje viajeVuelta = viajeManagerService.getViajeById(Integer.parseInt(reserva.getIdViajeVuelta())); 
		model.addAttribute("viajeVuelta",viajeVuelta);

		}
		
		model.addAttribute("viajeIda",viajeIda);
		model.addAttribute("reserva",reserva);

		 } catch (Exception e) {
			return "error";
		}

		// We return the name of the view. 
		return "reserva";
	}
	
}
