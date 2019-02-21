package co.grandcircus.CoffeeShop.Dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import co.grandcircus.CoffeeShop.POJOs.User;

@Transactional
@Repository
public class UserDao {

	@PersistenceContext
	private EntityManager em;
	//@Autowired
	//private JdbcTemplate jdbcTemplate;
	
	public void create(User user) {
		em.persist(user);
		//String sql = "INSERT INTO user (first_name, last_name, email, birthday, password, "
		//		+ "roast, barista) VALUES (?, ?, ?, ?, ?, ?, ?)";
		//jdbcTemplate.update(sql, user.getFirstName(), user.getLastName(), user.getEmail(), 
		//		user.getBirthday(), user.getPassword(), user.getRoast(), user.getBarista());
	}
}
