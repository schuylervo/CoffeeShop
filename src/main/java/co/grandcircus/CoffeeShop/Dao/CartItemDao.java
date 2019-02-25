package co.grandcircus.CoffeeShop.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import co.grandcircus.CoffeeShop.POJOs.CartItem;

@Transactional
@Repository
public class CartItemDao {

	@PersistenceContext
	private EntityManager em;
	
	public CartItem findById(Long id) {
		return em.find(CartItem.class, id);
	}
	
	public List<CartItem> findAll() {
		return em.createQuery("from CartItem order by id", CartItem.class).getResultList();
	}
	
	public void create(CartItem cartItem) {
		em.persist(cartItem);
	}
	
	public void update(CartItem cartItem) {
		em.merge(cartItem);
	}
	
	public void delete(Long id) {
		em.remove( em.getReference(CartItem.class, id));
	}
}
