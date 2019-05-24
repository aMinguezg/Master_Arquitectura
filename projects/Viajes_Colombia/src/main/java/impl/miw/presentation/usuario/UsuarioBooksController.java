package impl.miw.presentation.usuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miw.business.UsuarioManagerService;


@Controller
public class UsuarioBooksController {

	@Autowired 
	UsuarioManagerService usuarioManagerService;
	
	public void setUsuarioManagerService(UsuarioManagerService usuarioManagerService) {
		this.usuarioManagerService = usuarioManagerService;
	}
	
	@RequestMapping("usuario")
	public String viaje(Model model) throws Exception {
		System.out.println("Controlador del usuario.");

		// We store the list of books in teh model.
		model.addAttribute("listausuario",
				usuarioManagerService.getUsuarios());
		// We return the name of the view. 
		return "usuario";
		
	}
	
}
