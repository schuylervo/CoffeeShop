package co.grandcircus.CoffeeShop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.grandcircus.CoffeeShop.Dao.ItemDao;
import co.grandcircus.CoffeeShop.Dao.UserDao;
import co.grandcircus.CoffeeShop.Dao.CartItemDao;
import co.grandcircus.CoffeeShop.POJOs.Item;
import co.grandcircus.CoffeeShop.POJOs.User;
import co.grandcircus.CoffeeShop.POJOs.CartItem;


@Controller
public class CoffeeShopController {

	@Autowired
	private ItemDao itemDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private CartItemDao cartItemDao;
	/*
	@RequestMapping("/")
	public ModelAndView showHome() {
		ModelAndView mav = new ModelAndView("index");
		
		return mav;
	}
	*/
	

	@RequestMapping("/")
	public ModelAndView listStuff() {
		List<Item> listOfItems = itemDao.findAll();
		return new ModelAndView("index", "items", listOfItems);
	}
	
	
		
	@RequestMapping("/items")
	public ModelAndView list() {
		List<Item> listOfItems = itemDao.findAll();
		return new ModelAndView("itemlist", "items", listOfItems);
	}
	
	@RequestMapping("/add-to-cart")
	public ModelAndView addToCart( @RequestParam("itemId") Long itemId) { 
		CartItem cartItem = new CartItem();
		if (itemId == null) {
			cartItem.setItem(null);
		} else {
			cartItem.setItem( itemDao.findById(itemId) );
			cartItem.setCartQuantity(1);
		}
		
		cartItemDao.create(cartItem);
		System.out.println(cartItem.getId());
		
		
		return new ModelAndView("redirect:/cart");
	}
	
	
	@RequestMapping("/cart")
	public ModelAndView cartList() {
		List<CartItem> listOfCartItems = cartItemDao.findAll();
		return new ModelAndView("cart", "citems", listOfCartItems);
	}
	
	
	@RequestMapping("/items/{id}")
	public ModelAndView detail(@PathVariable("id") Long id) {
		Item item = itemDao.findById(id);
		
		return new ModelAndView("detail", "item", item);
	}
	
	@RequestMapping("/items/{id}/edit")
	public ModelAndView edit(@PathVariable("id") Long id) {
		Item item = itemDao.findById(id);
		
		return new ModelAndView("edit", "item", item);
	}
	
	@PostMapping("/items/{id}/edit")
	public ModelAndView save(@PathVariable("id") Long id, Item item) {
		item.setId(id);
		
		itemDao.update(item);
		
		return new ModelAndView("redirect:/item/" + id);
	}
	
	@RequestMapping("/items/add")
	public ModelAndView add() {		
		return new ModelAndView("add");
	}
	
	@PostMapping("/items/add")
	public ModelAndView addSubmit(Item item) {		
		itemDao.create(item);
		
		return new ModelAndView("redirect:/items");
	}
	
	@RequestMapping("/items/{id}/delete")
	public ModelAndView remove(@PathVariable("id") Long id) {
		try {
			itemDao.delete(id);
		} catch (Exception ex) {
			System.err.println("Error during deletion.");
			ex.printStackTrace(System.err);
		}
		return new ModelAndView("redirect:/items");
	}
	
	//@RequestMapping("/user-registration-form")
	//public ModelAndView showUserRegistrationForm() {
	//	ModelAndView mav = new ModelAndView("user-registration-form");
	//	return mav;
	//}
	
	
	
	@RequestMapping("/user-registration-form")
	public ModelAndView showUserRegistrationForm(@SessionAttribute(name="profile", required=false) User user) {
		return new ModelAndView("user-registration-form", "user", user);
	}
	
	@PostMapping("/user-registration-form")
	public ModelAndView submitUserRegistrationForm(User user, 
			
			HttpSession session) {
		
		System.out.println("You made it here");
		session.setAttribute("profile", user);
		ModelAndView mav = new ModelAndView("/user-summary");
		return mav;
	}
	
	@RequestMapping("/user-summary")
	public ModelAndView showSummary( User user, 
			@RequestParam("confirm-password") String confirmPassword,
			HttpSession session, RedirectAttributes redir) {
		//@RequestParam("firstName") String firstName,
		//@RequestParam("lastName") String lastName,
		//@RequestParam("email") String email,
		//@RequestParam("birthday") String birthday,
		//@RequestParam("password") String password,
		//@RequestParam("roast") String roast,
		//@RequestParam("barista") String barista
//	) {	
//		ModelAndView mav = new ModelAndView("user-summary");
//		mav.addObject("firstName", firstName);
//		mav.addObject("lastName", lastName);
//		mav.addObject("email", email);
//		mav.addObject("birthday", birthday);
//		mav.addObject("roast", roast);
//		mav.addObject("password", password);
//		mav.addObject("barista", barista);
//		return mav;
		User existingUser = userDao.findByUsername(user.getUsername());
		if (existingUser != null) {
			return new ModelAndView("user-registration-form", "message", "A user with that username already exists.");
		}
		
		if (!confirmPassword.equals(user.getPassword())) {
			return new ModelAndView("user-registration-form", "message", "Passwords do not match.");
		}
		
		
		userDao.create(user);
	 session.setAttribute("profile", user);
	redir.addFlashAttribute("message", "Thanks for signing up!");
	System.out.println("You made it over here this time");
	return new ModelAndView("user-summary");
	}
	

	
	@RequestMapping("/login")
	public ModelAndView showLoginForm() {
		return new ModelAndView("login");
	}

	@PostMapping("/login")
	// get the username and password from the form when it's submitted.
	public ModelAndView submitLoginForm(
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			HttpSession session, RedirectAttributes redir) {
		
		User user = userDao.findByUsername(username);
		if (user==null || !user.getPassword().equals(password)) {
			return new ModelAndView("login", "message", "Incorrect username or password.");
		}
		
		// log the user in
		session.setAttribute("profile", user);
		
		redir.addFlashAttribute("message", "Welcome. Thank you for logging in.");
		return new ModelAndView("redirect:/");

	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session, RedirectAttributes redir) {
		session.invalidate();
		redir.addFlashAttribute("message", "Logged out.");
		return new ModelAndView("redirect:/");
	}
	
	
	
}
