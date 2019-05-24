package impl.miw.presentation.reserva;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;



import com.miw.business.ReservaManagerService;



@Controller
public class ReservaController {
	@Autowired 
	ReservaManagerService reservaManagerService;
	
	public void setReservaManagerService(ReservaManagerService reservaManagerService) {
		this.reservaManagerService = reservaManagerService;
	}
	
	@RequestMapping("reserva")
	public String reserva(Model model) throws Exception {
		System.out.println("Controlador de la reserva.");

		// We store the list of books in teh model.
		model.addAttribute("listareserva",
				reservaManagerService.getReservas());
		// We return the name of the view. 
		return "reserva";
		
	}
	
}
