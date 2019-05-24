package impl.miw.presentation.login;

import java.util.Random;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.miw.model.LoginData;

@Controller
@RequestMapping("login")
public class LoginController {

	private String seed = "qwertyuiopasdfghjkl�zxcvbnmQWERTYUIOPASDFGHJKL�ZXCVBNM1234567890";

	@RequestMapping(method = RequestMethod.GET)
	public String getForm(Model model, HttpSession session) {
		System.out.println("Preparing the model for Login");
		// We could prepare the model here instead of using @ModelAttribute

		// We generate the Catcha code
		String captcha = generateCaptcha();
		model.addAttribute("captcha", captcha);
		session.setAttribute("captcha", captcha);
		return "login_page";
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

	@RequestMapping(method = RequestMethod.POST)
	public String processForm(@Valid @ModelAttribute("login") LoginData login, BindingResult result, Model model,
			HttpSession session) {
		System.out.println("Login in with " + login);

		// We validate with the Validator
		LoginValidator validator = new LoginValidator();
		validator.validate(login, result);

		if (result.hasErrors()) {
			return "login_page";
		}

		if (login.getCaptcha().equals(session.getAttribute("captcha"))) {
			if (login.getLogin().equals("admin") && login.getPassword().equals("amazin")) 
				return "index";
			else {
				model.addAttribute("message", "Credentials are not valid");
				return "login_page";
			}
		} else {
			model.addAttribute("message", "Captcha is wrong");
			login.setCaptcha("");
			return "login_page";
		}
	}

	@ModelAttribute("login")
	public LoginData prepareModel() {
		System.out.println("Invoking prepareModel()");
		return new LoginData();
	}

}
