package impl.miw.persistence.reserva;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;


import com.miw.model.Reserva;
import com.miw.persistence.ReservaDataService;

public class ReservaDAO implements ReservaDataService{
	/**
	 *Metodo para acceder a la base de datos de Reserva.
	 */
	public Vector<Reserva> getReservas() throws Exception {
		
		Vector<Reserva> resultado = new Vector<Reserva>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";

			
			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("select * from reserva");
			rs = ps.executeQuery();

			while (rs.next()) {
				
				Reserva reserva = new Reserva();
				reserva.setLocalizador(rs.getString("localizador"));
				
				resultado.add(reserva);
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