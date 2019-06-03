package com.homeworkgc.CoffeeShop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.homeworkgc.CoffeeShop.dao.InventoryDao;
import com.homeworkgc.CoffeeShop.dao.UserDao;
import com.homeworkgc.CoffeeShop.entity.Inventory;
import com.homeworkgc.CoffeeShop.entity.User;

@Controller
public class HomeController {

	@Autowired
	UserDao daoUser; 
	
	@Autowired
	InventoryDao daoInventory;
	
	@RequestMapping("/")
	public String index() {
		return "home";
	}
	
	@RequestMapping("/home")
	public String returnHome() {
		return "home";
	}

	@RequestMapping("/reg-page")
	public ModelAndView signUp() {
		return new ModelAndView("reg-page");
	}

	@RequestMapping("/login-page")
	public ModelAndView loginPage() {
		return new ModelAndView("login-page");
	}
	
	@RequestMapping("/admin-page")
	public ModelAndView adminPage() {
		return new ModelAndView("admin-page", "inventoryList", daoInventory.findAll());
	}
	
	@RequestMapping("add-inventory")
	public ModelAndView addInventorPagey() {
		return new ModelAndView("add-inventory");
	}
	
	@RequestMapping("/add-form")
	public ModelAndView addInventory(@RequestParam("name") String name, 
			@RequestParam("description")String description, @RequestParam("quantity")String quantity,
			@RequestParam("price")Double price) {
		
		
		daoInventory.addOrUpdate(new Inventory(name, description, quantity, price));
		return new ModelAndView("admin-page", "inventoryList", daoInventory.findAll());
	}
	
	@RequestMapping("/edit")
	public ModelAndView editInventory(@RequestParam("id") int id) {
		return new ModelAndView("edit-inventory", "id", id);
	}
	
	@RequestMapping("edit-form")
	public ModelAndView editUpdate(Inventory item) {
		daoInventory.addOrUpdate(item);
		return new ModelAndView("admin-page", "inventoryList", daoInventory.findAll());
	}
	
	@RequestMapping("delete")
	public ModelAndView delete(@RequestParam("id") int id) {
		daoInventory.deleteById(id);
		return new ModelAndView("admin-page", "inventoryList", daoInventory.findAll());
	}

	@PostMapping("regform")
	public ModelAndView registerPage(@RequestParam("firstname") String firstname,
			@RequestParam("lastname") String lastname, @RequestParam("email") String email,
			@RequestParam("password") String password) {
		daoUser.addAccount(new User(firstname, lastname, email, password));
		
		return new ModelAndView("reg-confirmation", "acct", firstname);
	}
	
	
	
}
