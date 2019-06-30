package impl.miw.persistence.contador;

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

import com.miw.model.Contador;
import com.miw.model.Reserva;
import com.miw.model.Viaje;
import com.miw.persistence.ContadorDataService;
import com.miw.persistence.ReservaDataService;
import com.miw.persistence.ViajeDataService;

public class ContadorDAO implements ContadorDataService{

	
	
	public int incrementar(Contador count) {
		
		int total = count.getCounter() + 1 ;
		count.setCounter(total);
 		return count.getCounter();
 		
	} 
	
	
}