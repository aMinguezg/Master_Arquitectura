package impl.miw.presentation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

	/*
	 * Setting / as request mapping url we are setting the default controller for the application.
	 */
	@RequestMapping("/")
	public String welcome()
	{
		System.out.println("Executing Welcome controller");
		return "redirect:login";
	}
}
