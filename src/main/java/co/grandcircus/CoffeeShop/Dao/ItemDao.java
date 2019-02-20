package co.grandcircus.CoffeeShop.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.CoffeeShop.POJOs.Item;

@Repository
public class ItemDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Item> findAll() {
		// BeanPropertyRowMapper uses the rows from the SQL result create
		// new Room objects and fill in the values by calling the setters.
		// Use .query for SQL SELECT statements.
		return jdbcTemplate.query("SELECT * FROM item", new BeanPropertyRowMapper<>(Item.class));
	}
		
	public Item findById(Long id) {
		// The last parameters of .query let us specify values for the (?) parameters in our SQL statement.
		// While .query returns a list, .queryForObject assumes only one result. 
		Item match = jdbcTemplate.queryForObject("SELECT * FROM item WHERE id = ?", new BeanPropertyRowMapper<>(Item.class), id);
		// If nothing matched, match will be null.
		return match;
	}
		
	public void update(Item item) {
		String sql = "UPDATE item SET name = ?, description = ?, quantity = ?, price = ? WHERE id = ?";
		// Use .update for SQL INSERT, UPDATE, and DELETE			// All the parameters after the first specify values to fill in the ?s in the SQL.
		jdbcTemplate.update(sql, item.getName(), item.getDescription(), item.getQuantity(), item.getPrice(), item.getId());
	}
	
	public void create(Item item) {
		String sql = "INSERT INTO item (name, description, quantity, price) VALUES (?, ?, ?, ?)";
		jdbcTemplate.update(sql, item.getName(), item.getDescription(), item.getQuantity(), item.getPrice());
	}
	
	public void delete(Long id) {
		String sql = "DELETE FROM item WHERE id = ?";
		jdbcTemplate.update(sql, id);
	}
}
