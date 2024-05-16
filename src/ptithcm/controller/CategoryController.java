package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.dao.CategoryDAO;
import ptithcm.dao.ProductDAO;
import ptithcm.entity.Account;
import ptithcm.entity.Category;
import ptithcm.entity.Product;
import ptithcm.utils.Constants;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired 
	private ProductDAO productDAO;

/*	@RequestMapping(value="/category/index")
	public String index(ModelMap model, HttpSession session) {
		 
		List<Product> listProduct = productDAO.listProducts();
		model.addAttribute("listProduct", listProduct);
	 
		List<Category> list = categoryDAO.listCategories();
		model.addAttribute("category", list);
		
		 List<Product> productGiuong = productDAO.listProductsInCategory(1); 
		 model.addAttribute("giuong", productGiuong); 
		
		 List<Product> productBan = productDAO.listProductsInCategory(2); 
		 model.addAttribute("ban", productBan);
		 
		 List<Product> productGhe = productDAO.listProductsInCategory(3); 
		 model.addAttribute("ghe", productGhe) ;
		
		return "category/index";
	}*/
	@RequestMapping("/{id}")
	public String category(ModelMap model, HttpSession session, @PathVariable(value = "id") int id) {
		List<Category> list = categoryDAO.listCategories();
		model.addAttribute("category", list);
		
		Category categoryid = categoryDAO.getCategory(id);
		model.addAttribute("categoryid", categoryid);

		 List<Product> product = productDAO.listProductsInCategory(id); 
		 model.addAttribute("productCate", product); 
		return "category/index";
	}
}
