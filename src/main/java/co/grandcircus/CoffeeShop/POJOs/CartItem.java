package co.grandcircus.CoffeeShop.POJOs;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;

@Entity
public class CartItem {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	Integer cartQuantity;
	@ManyToOne
	private Item item;
	
	
	public CartItem () {
		
	}
	
	public CartItem (Integer cartQuantity, Item item) {
		
		this.cartQuantity= cartQuantity;
		
	}
	
	public CartItem (Long id, Integer cartQuantity,
			Item item) {
		
		this.id= id;
		this.cartQuantity= cartQuantity;
		this.item= item;
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public Integer getCartQuantity() {
		return cartQuantity;
	}
	public void setCartQuantity(Integer cartQuantity) {
		this.cartQuantity = cartQuantity;
	}
	public Item getItem() {
		return item;
	}
	public void setItem (Item item) {
		this.item = item;
	}
	@Override
	public String toString() {
		return "CartItem [id=" + id + ", cartQuantity=" + cartQuantity + ", item=" + item + "]";
	}
	
	
	
}
