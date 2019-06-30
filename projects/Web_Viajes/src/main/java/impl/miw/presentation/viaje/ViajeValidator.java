package impl.miw.presentation.viaje;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.miw.model.Viaje;

public class ViajeValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Viaje.class.equals(clazz);
	}
	

	public void validate(Object target, Errors errors) {
		Viaje viaje = (Viaje) target;
		if (viaje.getOrigen() == null || viaje.getFecha().length() <= 1 || viaje.getFecha() == null || viaje.getId() < 0) {
			errors.rejectValue("viaje", "", "Viaje is mandatory");
		}
		 
		if (viaje.getPasajeros() <=0) {
			errors.rejectValue("viaje", "", "El numero de pasajeros tiene que ser mayor que 0");
		}
	}

}
