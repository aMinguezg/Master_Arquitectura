package impl.miw.presentation;

 
import org.springframework.context.annotation.Scope;
@Scope(value="globalsession")
  public class LoginCounter {
	 
	private Integer logins;
	
	
	
	

	public void setLogins(Integer logins) {
		this.logins = logins;
	}

	
	public Integer getLogins() {
		return logins;
	}


	public void inc()
	{
		logins ++;
	}
	
	public LoginCounter()
	{
		System.out.println("Inicializando el contador");
		logins=0;
	}
}
