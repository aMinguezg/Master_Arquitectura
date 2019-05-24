package impl.miw.persistence.usuario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import com.miw.model.Usuario;
import com.miw.persistence.UsuarioDataService;

public class UsuarioDAO implements UsuarioDataService{
	/**
	 * Metodo para acceder a la base de datos de Usuario
	 */
	public Vector<Usuario> getUsuarios() throws Exception {
	
		Vector<Usuario> resultado = new Vector<Usuario>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";

			
			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("select * from usuario");
			rs = ps.executeQuery();

			while (rs.next()) {
				
				Usuario usuario = new Usuario();
				usuario.setDni(rs.getString("dni"));
				
				resultado.add(usuario);
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		} finally {
			try {
				ps.close();
				con.close();
			} catch (Exception e) {
			}
		}
		
		return resultado;
	}
}