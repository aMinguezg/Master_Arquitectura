/* Generated by Together */

package impl.miw.business.viajemanager;



import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;

import com.miw.business.ViajeManagerService;
import com.miw.model.Viaje;
import com.miw.persistence.ViajeDataService;




public class ViajeManager implements ViajeManagerService {

	@Autowired
	private ViajeDataService viajeDataService = null;
	

	

	public void setViajeDataService(ViajeDataService viajeDataService) {
		System.out.println("Persistencia Viaje");
		this.viajeDataService = viajeDataService;
	}

	public Vector<Viaje> getViajes() throws Exception {
		
		Vector<Viaje> viajes = viajeDataService.getViajes();
		
		return viajes;
	}
	
	public Vector<String> getCiudades(boolean tipo) throws Exception{
		
		Vector<String> ciudades = viajeDataService.getCiudades(tipo);
		
		return ciudades;
	}
	public Vector<Viaje> getViajesSeleccionado(String ori,String dest,String fech) throws Exception{
		
		Vector<Viaje> viajes = viajeDataService.getViajesSeleccionado(ori,dest,fech);
		
		return viajes;
		
	}
}
