package impl.miw.presentation;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes({ "loginCounter" })
@Controller
public class WelcomeController {

	/*
	 * Setting / as request mapping url we are setting the default controller for
	 * the application.
	 */
	@RequestMapping("/")
	public String welcome() {
		System.out.println("Executing Welcome controller");
		return "redirect:/private/menu";
	}

	@RequestMapping("/private/menu")
	public String index(Principal p, @ModelAttribute("loginCounter") LoginCounter loginCounter) {
		loginCounter.inc();
		System.out.println("Executing private/menu controller for user " + p);
		return "private/index";
	}

	@ModelAttribute("loginCounter")
	public LoginCounter getLoginCounter() {
		System.out.println("Initializing loginCounter");
		return new LoginCounter();
	}

	@RequestMapping("loginError")
	public String loginError(ModelMap model) {
		model.addAttribute("error", "true");
		return "login_page";
	}
}