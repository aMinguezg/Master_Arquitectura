package impl.miw.persistence.viaje;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.Vector;


import com.miw.model.Viaje;
import com.miw.persistence.ViajeDataService;

public class ViajeDAO implements ViajeDataService{
	/**
	 * Metodo para acceder a la base de datos de viaje
	 */
	public Vector<Viaje> getViajes() throws Exception {
		
		Vector<Viaje> resultado = new Vector<Viaje>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";

			
			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("select * from viaje");
			rs = ps.executeQuery();

			while (rs.next()) {
				
				Viaje viaje = new Viaje();
				viaje.setId(rs.getInt("id"));
				viaje.setOrigen(rs.getString("origen"));
				viaje.setDestino(rs.getString("destino"));
				viaje.setFecha(rs.getDate("fecha").toString());
				viaje.setPrecio(rs.getDouble("precio"));
				viaje.setImagen(rs.getString("imagen"));
				viaje.setHorario(rs.getString("horario"));
				viaje.setContador(rs.getInt("contador"));
				viaje.setPasajeros(rs.getInt("pasajeros"));
				
				resultado.add(viaje);
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
	
	public Vector<String> getCiudades(boolean tipo) throws Exception {
		
		Vector<String> resultado = new Vector<String>();

		PreparedStatement ida = null;
		PreparedStatement vuelta = null;
		ResultSet rsIda = null;
		ResultSet rsVuelta = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";

			
			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			
			
			
			if(tipo) {
				
				ida = con.prepareStatement("select distinct(origen) from viaje");
				rsIda = ida.executeQuery();
				
				while (rsIda.next()) {
					
					String ciudad = null;
					ciudad = rsIda.getString("origen");
										
					resultado.add(ciudad);
				}
			}
			else {
				
				vuelta = con.prepareStatement("select distinct(destino) from viaje");
				rsVuelta = vuelta.executeQuery();
				
				while (rsVuelta.next()) {
					
					String ciudad = null;
					ciudad = rsVuelta.getString("destino");
										
					resultado.add(ciudad);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
		} finally {
			try {
				ida.close();
				vuelta.close();
				con.close();
			} catch (Exception e) {
			}
		}
		
		return resultado;
	}
	
	
	
public Viaje getViajeById(int id) throws Exception {
		
		Viaje viaje = new  Viaje();


		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";

			
			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("select * from viaje where id ="+id);
			rs = ps.executeQuery();

			while (rs.next()) {
				
			 
				viaje.setId(rs.getInt("id"));
				viaje.setOrigen(rs.getString("origen"));
				viaje.setDestino(rs.getString("destino"));
				viaje.setFecha(rs.getDate("fecha").toString());
				viaje.setPrecio(rs.getDouble("precio"));
				viaje.setImagen(rs.getString("imagen"));
				viaje.setHorario(rs.getString("horario"));
				viaje.setContador(rs.getInt("contador"));
				viaje.setPasajeros(rs.getInt("pasajeros"));
				
				 
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
		
		return viaje;
	}	
	
public Vector<Viaje> getViajesSeleccionado(String ori,String dest,String fech, int numPasajeros) throws Exception {
		
		Vector<Viaje> resultado = new Vector<Viaje>();


		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";

			
			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("select * from viaje where origen='"+ori+"' and pasajeros >" + numPasajeros + " and destino = '"+dest+"' and fecha='"+fech+"'");
			rs = ps.executeQuery();

			while (rs.next()) {
				
				Viaje viaje = new Viaje();
				viaje.setId(rs.getInt("id"));
				viaje.setOrigen(rs.getString("origen"));
				viaje.setDestino(rs.getString("destino"));
				viaje.setFecha(rs.getDate("fecha").toString());
				viaje.setPrecio(rs.getDouble("precio"));
				viaje.setImagen(rs.getString("imagen"));
				viaje.setHorario(rs.getString("horario"));
				viaje.setContador(rs.getInt("contador"));
				viaje.setPasajeros(rs.getInt("pasajeros"));
				
				resultado.add(viaje);
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

public void reducirPasajeros(int idViaje) throws Exception {

	int rs = 0;
 
	
	PreparedStatement ps = null;
		Connection con = null;

	try {
		String SQL_DRV = "org.hsqldb.jdbcDriver";
		String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";

		
		Class.forName(SQL_DRV);
		con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

		ps = con.prepareStatement("UPDATE \"PUBLIC\".\"VIAJE\"\r\n" + 
				"SET  \"PASAJEROS\" = \"PASAJEROS\" - 1 WHERE \"ID\" = " + idViaje);
		 rs = ps.executeUpdate();

		 

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
	
 	
}
	
}