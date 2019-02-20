package co.grandcircus.CoffeeShop.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.CoffeeShop.POJOs.User;

@Repository
public class UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void create(User user) {
		String sql = "INSERT INTO user (firstName, lastName, email, birthday, password, "
				+ "roast, barista) VALUES (?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, user.getFirstName(), user.getLastName(), user.getEmail(), 
				user.getBirthday(), user.getPassword(), user.getRoast(), user.getBarista());
	}
}
