package impl.miw.presentation.registro;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;


import com.miw.business.ViajeManagerService;


@Controller
public class RegistroController {
	@Autowired 
	ViajeManagerService viajeManagerService;
	
	public void setViajeManagerService(ViajeManagerService viajeManagerService) {
		this.viajeManagerService = viajeManagerService;
	}
	
	@RequestMapping("registro")
	public String registro(Model model) throws Exception {
		System.out.println("Controlador del viaje.");

		// We store the list of books in teh model.
		model.addAttribute("listaviaje",
				viajeManagerService.getViajes());
		// We return the name of the view. 
		return "registro";
		
	}
	
}
