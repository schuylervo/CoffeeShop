package co.grandcircus.CoffeeShop.POJOs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "user")
public class User {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	@Column(name="first_name")
	private String firstName;
	@Column(name="last_name")
	private String lastName;
	private String email;
	private String birthday;
	private String password;
	private String roast;
	private String barista;
	
	public User() {
		super();
	}
	
	public User(String firstName, String lastName, String email,
			String password) {
		
		this.firstName= firstName;
		this.lastName= lastName;
		this.email= email;
		this.password= password;
	}
	
	public User(Long id, String firstName, String lastName, String email,
			String birthday, String password, String roast, String barista) {
		
		this.id = id;
		this.firstName= firstName;
		this.lastName= lastName;
		this.email= email;
		this.birthday= birthday;
		this.password= password;
		this.roast=roast;
		this.barista=barista;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName= firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName= lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email= email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday= birthday;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password= password;
	}
	public String getRoast() {
		return roast;
	}
	public void setRoast(String roast) {
		this.roast= roast;
	}
	public String getBarista() {
		return barista;
	}
	public void setBarista(String barista) {
		this.barista= barista;
	}
}
