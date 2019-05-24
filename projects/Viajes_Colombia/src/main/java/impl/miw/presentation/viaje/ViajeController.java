package impl.miw.presentation.viaje;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;

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
public class ViajeController {
	@Autowired 
	ViajeManagerService viajeManagerService;
	
	public void setViajeManagerService(ViajeManagerService viajeManagerService) {
		this.viajeManagerService = viajeManagerService;
	}
	
	@RequestMapping(value = "viaje", method=RequestMethod.GET)
	public String viaje(Model model) throws Exception {
		System.out.println("Controlador del viaje.");

		// We store the list of books in teh model.
		model.addAttribute("listaviajeida",
				viajeManagerService.getCiudades(true));
		model.addAttribute("listaviajevuelta",
				viajeManagerService.getCiudades(false));
		model.addAttribute("viaje",new Viaje());
		// We return the name of the view. 
		List<Integer> numbers = new ArrayList<Integer>();
		List<Integer> dias = new ArrayList<Integer>();
		List<Integer> meses = new ArrayList<Integer>();
		List<Integer> annos = new ArrayList<Integer>();
		annos.add(2018);
		annos.add(2019);
		model.addAttribute( "annos",annos);
		for ( int i = 1 ; i <= 31 ; i ++ ) {
			
			if(i<=10) {
				numbers.add(i);
				meses.add(i);
			}
			if(i<=12) {
				meses.add(i);
			}
			dias.add(i);
		}
		model.addAttribute( "numbers",numbers);
		model.addAttribute( "dias",dias);
		model.addAttribute( "meses",meses);
		return "viaje";
		
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String postSC(@ModelAttribute Viaje viaje, Model model) throws Exception
	{
		System.out.println("Received: "+viaje);
		
		
		System.out.println("probamos"+viaje.getOrigen());
		// We return the name of the view. 
		//Mandar desde aquí
		model.addAttribute(viaje);
		return "redirect:horarios";
	}
	
}
