package impl.miw.presentation.reserva;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.miw.model.Reserva;
import com.miw.model.Viaje;

public class ReservaValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Reserva.class.equals(clazz);
	}
	

	public void validate(Object target, Errors errors) {
		Reserva reserva = (Reserva) target;
		if (reserva.getNombre() == null || reserva.getApellidos() == null || reserva.getDni() == null || reserva.getEmail() == null || reserva.getIdViajeIda() == null) {
			errors.rejectValue("reserva", "", "Reserva is mandatory");
		}
		 
		
		Pattern patron = Pattern.compile("^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,3})$");
		Matcher m = patron.matcher(reserva.getEmail());
		if (!m.find()) {
			errors.rejectValue("", "Reserva: El email introducido no es correcto");
		}
		
		if("DNI".equals(reserva.getTipoId())) {
			Pattern patronDNI = Pattern.compile("^\\d{8}[a-zA-Z]{1}$");
			Matcher mDNI = patronDNI.matcher(reserva.getDni());
			if (!mDNI.find()) {
				errors.rejectValue("", "Reserva: El DNI introducido no es correcto");
			}
		}
		else if ("NIE".equals(reserva.getTipoId())) {
			Pattern patronNIE = Pattern.compile("^[XxTtYyZz]{1}[0-9]{7}[a-zA-Z]{1}$");
			Matcher mNIE = patronNIE.matcher(reserva.getDni());
			if (!mNIE.find()) {
				errors.rejectValue("", "Reserva: El NIE introducido no es correcto");
			}
		}
		else if ("PASAPORTE".equals(reserva.getTipoId())) {
			Pattern patronPASAPORTE = Pattern.compile("/^[a-z]{3}[0-9]{6}[a-z]?$/i");
			Matcher mPASAPORTE = patronPASAPORTE.matcher(reserva.getDni());
			if (!mPASAPORTE.find()) {
				errors.rejectValue("", "Reserva: El PASAPORTE introducido no es correcto");
			}
		}
		
		
	}

}
