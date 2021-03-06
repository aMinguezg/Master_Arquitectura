package impl.miw.presentation.viaje;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.miw.business.ViajeManagerService;
import com.miw.model.Viaje;




@Controller
@RequestMapping("viaje")

public class ViajeController {
	@Autowired 
	ViajeManagerService viajeManagerService;
	
	public void setViajeManagerService(ViajeManagerService viajeManagerService) {
		this.viajeManagerService = viajeManagerService;
	}
	
	
	@GetMapping
	public String viaje(Model model) throws Exception {
 
		// Cargamos lista de viajes de IDA
		model.addAttribute("listaviajeida",
				viajeManagerService.getCiudades(true));
		
		// Cargamos lista de viajes de VUELTA
		model.addAttribute("listaviajevuelta",
				viajeManagerService.getCiudades(false));
		
		// Add Model VIAJE
		model.addAttribute("viaje",new Viaje());
		
		// We return the name of the view. 
		return "viaje";		
	}
	
	
	@PostMapping
	public String postSC(@Valid @ModelAttribute ("viaje") Viaje viaje, Model model, BindingResult result,  RedirectAttributes redirectAttributes) throws Exception
	{
		// We validate with the Validator
				ViajeValidator validator = new ViajeValidator();
				validator.validate(viaje, result);

				if (result.hasErrors()) {
					return "login";
				}
	    redirectAttributes.addFlashAttribute("viaje", viaje);
		return "redirect:horarios";
	}
	
}
