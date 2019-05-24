package com.jwt.dao;


import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
  import org.springframework.stereotype.Repository;

import com.jwt.model.Usuario;

 
 
@Repository     //Data Access Object
public class UsuarioDAOImpl implements UsuarioDAO{

 	
	private SessionFactory sessionFactory;
	 //Logger logger = LoggerFactory.getLogger(UsuarioDAOImpl.class);
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

 

	@Override
	public List<Usuario> listUsers() {
		// TODO Auto-generated method stub
				Session session = this.sessionFactory.getCurrentSession();
				@SuppressWarnings("unchecked")
				List<Usuario> usersList = session.createQuery("from Usuario").list();
			   return usersList;
	}

 
 
	@Override
	public void removeUser(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Usuario p = (Usuario) session.load(Usuario.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		//logger.info("Usuario deleted successfully, Usuario details="+p);
	}

	@Override
	public void addUser(Usuario p) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
	}

	@Override
	public void updateUser(Usuario p) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
	}

	@Override
	public Usuario getUserById(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();		
		Usuario p = (Usuario) session.load(Usuario.class, new Integer(id));
		//logger.info("Usuario loaded successfully, Usuario details="+p);
		return p;
	}

	@Override
	public Usuario getUserByLogin(String login) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();		
		Usuario p = (Usuario) session.createQuery("from Usuario where login ="+login);
		return p;
 	}

	 
}
