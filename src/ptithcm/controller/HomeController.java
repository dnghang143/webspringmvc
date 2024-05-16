package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.dao.AccountDAO;
import ptithcm.dao.CategoryDAO;
import ptithcm.dao.ProductDAO;
import ptithcm.entity.Account;
import ptithcm.entity.Category;
import ptithcm.entity.Product;
import ptithcm.utils.Constants;

@Controller
public class HomeController {

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping(value = "home")
	public String index(ModelMap model, HttpSession session) {
		List<Category> list = categoryDAO.listCategories();
		model.addAttribute("category", list);

		List<Product> list1 = productDAO.listProducts();
		model.addAttribute("product", list1);

		List<Product> productMen = productDAO.listProductsInCategory(1);
		model.addAttribute("men", productMen);

		List<Product> productWomen = productDAO.listProductsInCategory(2);
		model.addAttribute("women", productWomen);

		List<Product> productAccessories = productDAO.listProductsInCategory(3);
		model.addAttribute("accessories", productAccessories);

		List<Product> giamGia = productDAO.listProductsGiamGia();
		model.addAttribute("giamGia", giamGia.subList(0, Math.min(7, giamGia.size())));
		return "index";
	}

	@RequestMapping(value = "include")
	public String header(ModelMap model) {
		List<Category> list = categoryDAO.listCategories();
		model.addAttribute("category", list);
		return "redirect:/home.htm";
	}

	@RequestMapping(value = "about")
	public String about(ModelMap model, HttpSession session) {
		List<Category> list = categoryDAO.listCategories();
		model.addAttribute("category", list);
		return "aboutus";
	}
	@RequestMapping(value = "contact")
	public String contact(ModelMap model, HttpSession session) {
		List<Category> list = categoryDAO.listCategories();
		model.addAttribute("category", list);
		return "contact";
	}

}
