package sparx.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import sparx.model.User;

@Repository
@Transactional
public class UserDAO {

	private static final Logger logger = LoggerFactory.getLogger(UserDAO.class);

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void addUser(User u) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(u);
		logger.info("User saved successfully, User Details=" + u);

	}

	public void updateUser(User u) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(u);
		logger.info("User updated successfully, User Details=" + u);
	}

	@SuppressWarnings("unchecked")

	public List<User> listUsers() {
		Session session = sessionFactory.getCurrentSession();

		List<User> userList = session.createQuery("from User").list();
		for (User u : userList) {
			logger.info("User List::" + u);
		}

		return userList;
	}


	public User getUserById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User u = (User) session.load(User.class, new Integer(id));
		logger.info("User loaded successfully, User details=" + u);
		return u;
	}
	
	public User getUserByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();

		List<User> users = session.createQuery("from User u where u.username='" + username + "'").list();
		User user=users.get(0);
		
			logger.info("user Details retrieved successfully, User Details::" + user);
		

		return user;
	}
	
	public User getUserByEmail(String email) {
		Session session = sessionFactory.getCurrentSession();

		List<User> users = session.createQuery("from User u where u.email='" + email + "'").list();
		User user=users.get(0);
		
			logger.info("user Details retrieved successfully, User Details::" + user);
		

		return user;
	}
	

	public void removeUser(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User u = (User) session.load(User.class, new Integer(id));
		if (null != u) {
			session.delete(u);
		}
		logger.info("User deleted successfully, User details=" + u);

	}
}
