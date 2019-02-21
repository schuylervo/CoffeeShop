package co.grandcircus.CoffeeShop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.CoffeeShop.Dao.ItemDao;
import co.grandcircus.CoffeeShop.Dao.UserDao;
import co.grandcircus.CoffeeShop.POJOs.Item;
import co.grandcircus.CoffeeShop.POJOs.User;

@Controller
public class CoffeeShopController {

	@Autowired
	private ItemDao itemDao;
	
	@Autowired
	private UserDao userDao;
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
		
		return new ModelAndView("redirect:/items/" + id);
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
	
	
	
	
	
	
	@RequestMapping("/user-registration-form")
	public ModelAndView showUserRegistrationForm() {
		ModelAndView mav = new ModelAndView("user-registration-form");
		return mav;
	}
	
	@RequestMapping("/user-summary")
	public ModelAndView showSummary( User user) {
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
	 userDao.create(user);
	return new ModelAndView("user-summary");
	}
	
	
}
