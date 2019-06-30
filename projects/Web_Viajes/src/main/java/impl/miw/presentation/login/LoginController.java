package impl.miw.presentation.login;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

 import com.miw.business.ReservaManagerService;
 import com.miw.model.LoginData;

import impl.miw.presentation.LoginCounter;

@Controller
@RequestMapping("login")
@SessionAttributes({"loginCounter"}) 
public class LoginController {

 	
	
	private String seed = "qwertyuiopasdfghjklñzxcvbnmQWERTYUIOPASDFGHJKLÑZXCVBNM1234567890";
	@Autowired 
	ReservaManagerService reservaManagerService;
	
	public static ApplicationContext contexto;

	 
	@ModelAttribute("loginCounter")
	public LoginCounter getLoginCounter() {
		System.out.println("Initializing loginCounter");
		return new LoginCounter();
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String getForm(Model model, HttpServletRequest req, HttpSession session, @ModelAttribute("loginCounter") LoginCounter loginCounter) {
		System.out.println("Preparing the model for Login");
		// We could prepare the model here instead of using @ModelAttribute

		// We generate the Catcha code
		String captcha = generateCaptcha();
		model.addAttribute("captcha", captcha);
		session.setAttribute("captcha", captcha);
		
		//Enviamos los 3 destinos mas solicitados
		List<String> destinos;
		try {
			destinos = reservaManagerService.get3Popular();
		} catch (Exception e) {
 			return "error";
		}
		
		loginCounter.inc();
		 //contexto = new ClassPathXmlApplicationContext("beans.xml");
		 //LoginCounter lg = (LoginCounter) contexto.getBean("loginCounter");
		//lg.inc();
		
		
		model.addAttribute("destinosTop", destinos);
		model.addAttribute("hitCounter", loginCounter.getLogins());
		return "login";
	}

	/**
	 * Private method to generate the captcha code
	 * 
	 * @return
	 */
	private String generateCaptcha() {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 10; i++) {
			sb.append(seed.charAt(((new Random()).nextInt(seed.length()))));
		}
		System.out.println("Generating Captcha: " + sb.toString());
		return sb.toString();
	}

	/*@RequestMapping(method = RequestMethod.POST)
	public String processForm(@Valid @ModelAttribute("login") LoginData login, BindingResult result, Model model,
			HttpSession session) {
		System.out.println("Login in with " + login);

		// We validate with the Validator
		LoginValidator validator = new LoginValidator();
		validator.validate(login, result);

		if (result.hasErrors()) {
			return "login";
		}

		//if (login.getCaptcha().equals(session.getAttribute("captcha"))) {
			 
				return "login";
			
		//} else {
			//model.addAttribute("message", "Captcha is wrong");
			//login.setCaptcha("");
			//return "login";
		//}
	}*/

	@ModelAttribute("login")
	public LoginData prepareModel() {
		System.out.println("Invoking prepareModel()");
		return new LoginData();
	}
 

	public static void setContexto(ApplicationContext contexto) {
		LoginController.contexto = contexto;
	}

	 

	

}
