package impl.miw.presentation.horarios;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miw.business.ViajeManagerService;
import com.miw.model.Viaje;


@Controller
@SessionAttributes("viaje")
public class HorariosController {
	@Autowired 
	ViajeManagerService viajeManagerService;
	
	public void setViajeManagerService(ViajeManagerService viajeManagerService) {
		this.viajeManagerService = viajeManagerService;
	}
	
	@RequestMapping(value = "horarios", method=RequestMethod.GET)
	public String horarios(@ModelAttribute Viaje viaje,Model model) throws Exception {
		System.out.println("Controlador de los horarios.");
		
		
		
		// We store the list of books in teh model.
 		model.addAttribute("listaida",
				viajeManagerService.getViajesSeleccionado(viaje.getOrigen(),viaje.getDestino(),viaje.getAnno()+"-"+viaje.getMes()+"-"+viaje.getDia()));
		model.addAttribute("listavuelta",
				viajeManagerService.getViajesSeleccionado("Barcelona","Madrid","2018-12-26"));
		// We return the name of the view. 
		return "horarios";
		
	}
	
}
