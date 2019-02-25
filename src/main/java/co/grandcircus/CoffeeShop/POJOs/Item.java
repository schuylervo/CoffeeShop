package co.grandcircus.CoffeeShop.POJOs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "item")
public class Item {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	private String name;
	private String description;
	@Column(name="store_quantity")
	private Integer storeQuantity;
	private Double price;
	
	
	public Item() {
		
	}
	
	public Item (Long id, String name, String description, Integer storeQuantity,
			Double price) {
		
		this.id = id;
		this.name= name;
		this.description= description;
		this.storeQuantity= storeQuantity;
		this.price= price;
	}
	
	public Item (String name, String description, Integer storeQuantity,
			Double price) {
		
		this.name= name;
		this.description= description;
		this.storeQuantity= storeQuantity;
		this.price= price;
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getStoreQuantity() {
		return storeQuantity;
	}
	public void setStoreQuantity(Integer storeQuantity) {
		this.storeQuantity = storeQuantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Item [id=" + id + ", name=" + name + ", description=" + description + ", storeQuantity=" + storeQuantity + ", price=" + price + "]";
	}
	
}
