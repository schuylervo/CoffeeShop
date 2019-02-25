package co.grandcircus.CoffeeShop.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import co.grandcircus.CoffeeShop.POJOs.Item;

@Transactional
@Repository
public class ItemDao {
	
	@PersistenceContext
	private EntityManager em;
	//@Autowired
	//private JdbcTemplate jdbcTemplate;
	
	public List<Item> findAll() {
		
		// BeanPropertyRowMapper uses the rows from the SQL result create
		// new Room objects and fill in the values by calling the setters.
		// Use .query for SQL SELECT statements.
		//return jdbcTemplate.query("SELECT * FROM item", new BeanPropertyRowMapper<>(Item.class));
		return em.createQuery("FROM Item", Item.class).getResultList();
	}
		
	public Item findById(Long id) {
		// The last parameters of .query let us specify values for the (?) parameters in our SQL statement.
		// While .query returns a list, .queryForObject assumes only one result. 
		//Item match = jdbcTemplate.queryForObject("SELECT * FROM item WHERE id = ?", new BeanPropertyRowMapper<>(Item.class), id);
		// If nothing matched, match will be null.
		//return match;
		return em.find(Item.class, id);
	}
		
	public void update(Item item) {
		//String sql = "UPDATE item SET name = ?, description = ?, store_quantity = ?, price = ? WHERE id = ?";
		// Use .update for SQL INSERT, UPDATE, and DELETE			// All the parameters after the first specify values to fill in the ?s in the SQL.
		//jdbcTemplate.update(sql, item.getName(), item.getDescription(), item.getStoreQuantity(), item.getPrice(), item.getId());
		em.merge(item);
	}
	
	public void create(Item item) {
		//String sql = "INSERT INTO item (name, description, store_quantity, price) VALUES (?, ?, ?, ?)";
		//jdbcTemplate.update(sql, item.getName(), item.getDescription(), item.getStoreQuantity(), item.getPrice());
		em.persist(item);
	}
	
	public void delete(Long id) {
		//String sql = "DELETE FROM item WHERE id = ?";
		//jdbcTemplate.update(sql, id);
		Item item = em.getReference(Item.class, id);
		em.remove(item);
	}
}
