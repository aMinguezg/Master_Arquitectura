package impl.miw.persistence.reserva;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Vector;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

import com.miw.model.Reserva;
import com.miw.model.Viaje;
import com.miw.persistence.ReservaDataService;
import com.miw.persistence.ViajeDataService;

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

	public int saveReserva(Reserva reserva) throws Exception {

		int rs = 0;
		//Montamos el String de equipajeExtra
		StringBuilder cadenaEquipaje = new StringBuilder();

		for(String extra : reserva.getEquipaje()) {
			cadenaEquipaje.append(extra);
		}



		PreparedStatement ps = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";


			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("INSERT INTO \"PUBLIC\".\"RESERVA\"\r\n" + 
					"( \"LOCALIZADOR\", \"NOMBRE\", \"APELLIDOS\", \"TIPOID\", \"DNI\", \"EMAIL\", \"SEGURO\", \"EQUIPAJE\", \"IDVIAJEIDA\", \"IDVIAJEVUELTA\")\r\n" + 
					"VALUES (\'" + reserva.getLocalizador() + "\',\'" + reserva.getNombre() + "\',\'" + reserva.getApellidos() + "\',\'" + reserva.getTipoId() + "\',\'" + reserva.getDni() + "\',\'" + reserva.getEmail() + "\',\'" + reserva.getSeguro() + "\',\'" + cadenaEquipaje + "\'," + reserva.getIdViajeIda() + "," + reserva.getIdViajeVuelta() + " )");
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

		return rs;
	}

	public String sendReservaByEmail(Reserva reserva, Viaje viajeIda, Viaje viajeVuelta) {

		StringBuilder cadenaEquipaje = new StringBuilder();

		for(String extra : reserva.getEquipaje()) {
			cadenaEquipaje.append(extra);
		}



		String host="smtp.gmail.com";  
		final String user="adrianminz00@gmail.com";//change accordingly  
		final String password="221090SSaa";//change accordingly  
		
		String to= reserva.getEmail();//change accordingly  

		//Get the session object  
		Properties props = new Properties();  
		 Properties prop = new Properties();
			prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.port", "587");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.starttls.enable", "true"); //TLS
	        
	        Session session = Session.getInstance(prop,
	                new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(user, password);
	                    }
	                });

	        try {

	            Message message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(user));
	            message.setRecipients(
	                    Message.RecipientType.TO,
	                    InternetAddress.parse(reserva.getEmail())
	            );
	            message.setSubject("Testing Gmail TLS"); 

			String mainMsg = "<html><head>" +
					"<style type=\"text/css\">" +
					"  .red { color: #f00; }" +
					"</style>" +
					"</head>" +
					"<h1 class=\"red\">" + "Reserva realizada" + "</h1>" +
					"<table>  <thead>" +
					"<tr>" +
					"<th>Detalles de reserva</th>" +
					"<th>Localizador:" +reserva.getLocalizador() + "</th>" + 
					"<th></th>" +
					"</tr>" +
					"</thead>"+
					"<tbody>"+
					"<tr>"+
					"<td>Nombre</td>" +
					"<td>" + reserva.getNombre() + " " + reserva.getApellidos() + "</td>"+
					"<td></td>"+
					"</tr>" +
					"<tr>" +
					"<td>Nº Identificación</td>"+
					"<td>" + reserva.getDni() + "</td>" +
					"<td></td>" +
					"</tr>" +
					"<tr>" +
					"<td>Equipaje</td>" + 
					"<td>" + cadenaEquipaje + "</td>" +
					"<td></td>" +
					"</tr>" +
					"<tr>" +
					"<td>Viaje ida - ORIGEN</td>" +
					"<td>" + viajeIda.getOrigen() + "</td>" + 
					"<td></td>" + 
					"</tr>" +
					"<tr>" +
					"<td>Viaje ida - DESTINO</td>" +
					"<td>" + viajeIda.getDestino() + "</td>" + 
					"<td></td>" + 
					"</tr>" +	
					"<tr>"+ 
					"<td>Viaje ida - fecha</td>" +
					"<td>"+ viajeIda.getFecha() + "</td>" +
					"<td></td>" +
					"</tr>"+
					"<tr>"+
					"<td>Viaje ida - horario</td>" +
					"<td>" +  viajeIda.getHorario() + "</td>" +
					"<td></td>" +
					"</tr>" +
					"<tr>" +
					"<td>Viaje ida - precio</td>" +
					"<td>" + viajeIda.getPrecio() + "</td>" +
					"<td></td>" +
					"</tr>";



			String msgFinal = "</tbody> </table></html>";  
			String msgCompleto = "";

			if(reserva.getIdViajeVuelta() != null && reserva.getIdViajeVuelta() != "" && !reserva.getIdViajeVuelta().contains("null")) {

				String msgVuelta = "<tr>"+
						"<td>Viaje vuelta - ORIGEN</td>" + 
						"<td>"+ viajeVuelta.getOrigen() + "</td>" +
						"<td></td>"+
						"</tr>" +

				        				"<tr>"+
				        				"<td>Viaje vuelta - DESTINO</td>" + 
				        				"<td>"+ viajeVuelta.getDestino() + "</td>" +
				        				"<td></td>"+
				        				"</tr>" +	

				        				"<tr>"+
				        				"<td>Viaje vuelta - fecha</td>"+
				        				"<td>" + viajeVuelta.getFecha() + "</td>"+
				        				"<td></td>" +
				        				"</tr>"+
				        				"<tr>"+
				        				"<td>Viaje vuelta - horario</td>" +
				        				"<td>" + viajeVuelta.getHorario() + "</td>" +
				        				"<td></td>"+
				        				"</tr>"+
				        				"<tr>" +
				        				"<td>Viaje vuelta - precio</td>" +
				        				"<td>"+ viajeVuelta.getPrecio() + "</td>" +
				        				"<td></td>" +
				        				"</tr>";
				msgCompleto = mainMsg + msgVuelta + msgFinal;
			} 
			else { msgCompleto = mainMsg + msgFinal;
			}

			message.setText(msgCompleto);				


			//send the message  
			Transport.send(message);  

			System.out.println("message sent successfully...");  

		} catch (MessagingException e) {e.printStackTrace();}  

		return null;
	}

	public Reserva getReservaByLocalizador(String localizador) throws Exception {
		Reserva resultado = new Reserva();

		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";


			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("select * from reserva where localizador = \'" + localizador + "\'" );
			rs = ps.executeQuery();

			while (rs.next()) {

				resultado.setLocalizador(rs.getString("localizador"));
				resultado.setNombre(rs.getString("nombre"));
				resultado.setApellidos(rs.getString("apellidos"));
				resultado.setDni(rs.getString("dni"));
				resultado.setEquipaje(rs.getString("equipaje").split(","));
				resultado.setIdViajeIda(String.valueOf(rs.getInt("idviajeida")));
				resultado.setIdViajeVuelta(String.valueOf(rs.getInt("idviajevuelta")));
				resultado.setSeguro(rs.getString("seguro"));
				resultado.setEmail(rs.getString("email"));
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

	public List<String> get3Popular() throws Exception {
		List<String> destinos = new ArrayList<String>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";


			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("select count(*) as contador, viaje.origen as origen  from reserva \r\n" + 
					"inner join viaje on viaje.id = reserva.idviajeida\r\n" + 
					"group by contador,origen\r\n" + 
					"limit 3");
			rs = ps.executeQuery();

			while (rs.next()) {

  				destinos.add(rs.getString("origen").trim().toLowerCase());

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

		return destinos;
	}

	public List<Viaje> getHistorial(String email) throws Exception {
		List<Viaje> resultado = new ArrayList<Viaje>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";


			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("SELECT * FROM VIAJE  INNER JOIN RESERVA  ON   IDVIAJEIDA = ID OR IDVIAJEVUELTA = ID  where email = \'" + email + "\'" );
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

	public int deleteReserva(Reserva reserva) throws Exception {
 		PreparedStatement ps = null;
		int rs = 0;
		Connection con = null;

		try {
			String SQL_DRV = "org.hsqldb.jdbcDriver";
			String SQL_URL = "jdbc:hsqldb:hsql://localhost/amazin";


			Class.forName(SQL_DRV);
			con = DriverManager.getConnection(SQL_URL, "DFLANVIN", "AMAZIN");

			ps = con.prepareStatement("DELETE FROM RESERVA WHERE LOCALIZADOR = \'" + reserva.getLocalizador() + "\'   AND email = \'" + reserva.getEmail() + "\'" );
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

		return rs;
	}
}