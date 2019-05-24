/* Generated by Together */

package impl.miw.business.usuariomanager;


import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;

import com.miw.business.UsuarioManagerService;
import com.miw.model.Usuario;
import com.miw.persistence.UsuarioDataService;

public class UsuarioManager implements UsuarioManagerService {

	@Autowired
	private UsuarioDataService usuarioDataService = null;
	

	

	public void setUsuarioDataService(UsuarioDataService usuarioDataService) {
		System.out.println("Persistencia usuario");
		this.usuarioDataService = usuarioDataService;
	}

	public Vector<Usuario> getUsuarios() throws Exception {
		
		Vector<Usuario> usuarios = usuarioDataService.getUsuarios();
		
		return usuarios;
	}
}
