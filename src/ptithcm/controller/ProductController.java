package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.dao.CartDAO;
import ptithcm.dao.CategoryDAO;
import ptithcm.dao.ProductDAO;
import ptithcm.entity.Account;
import ptithcm.entity.Carts;
import ptithcm.entity.Category;
import ptithcm.entity.Product;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private CartDAO cartDAO;

	
	@RequestMapping("/{id}")
	public String product(ModelMap model, HttpSession session, @PathVariable(value = "id") int id) {
		Product product = productDAO.getProductId(id);
		
		Account user = (Account) session.getAttribute("account");
		
		List<Category> list = categoryDAO.listCategories();

		List<String> images = new ArrayList<String>();
		if (product.getImages() != null && product.getImages().trim().length() > 0) {
			for (String s : product.getImages().split("\\s+")) {
				images.add(s);
			}
		} else {
			images.add("resources/images/blog_3.jpg");
		}
		model.addAttribute("images", images);
		model.addAttribute("categories", list);
		model.addAttribute("product", product);
		
		if (user != null) {

			// Kiêm tra sản phẩm đã có trong gi�? hay chưa
			Carts cart = cartDAO.get(user.getAccountId(), id);
			model.addAttribute("addedToCart", cart != null);
		}
		
		return "product/detail";
	}
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(ModelMap model, HttpSession session, @RequestParam Map<String, String> params) {
		String keyword = "";

		String title = "Danh sách sản phẩm";
		if (params.containsKey("keyword")) {
			keyword = params.get("keyword");
			if (keyword != null && keyword.trim().length() > 0) {
				title = "Tìm kiếm: " + keyword.trim();
			}
		}

		List<Product> productall = productDAO.listProducts();
		
		List<Product> product = productDAO.filterByKeyword(productall, keyword);
		model.addAttribute("product", product);
		model.addAttribute("keyword", keyword);

		model.addAttribute("title", title);

		model.addAttribute("url",
				String.format("category/index.htm?keyword=", product));
		return "category/index";
	}
	// SỬA LẠI HÀM PRODUCTINDEX ĐỂ XỬ LÝ PAGINATION - PHÂN TRANG ( 5 SẢN PHẨM / 1 TRANG )
	@RequestMapping(value = "pro/{page}", method = RequestMethod.GET)
	public String productindex(ModelMap model, HttpSession session, @PathVariable int page) {
		// Lấy danh sách sản phẩm từ DAO
	    List<Product> allProducts = productDAO.listProducts();
	    
	    // Lọc sản phẩm theo từ khoá nếu cần
	    String keyword = ""; // Thay đổi nếu bạn muốn lọc sản phẩm theo từ khoá
	    List<Product> filteredProducts = productDAO.filterByKeyword(allProducts, keyword);

	    // Tính số lượng trang
	    int totalProducts = filteredProducts.size();
	    int productsPerPage = 5;
	    int totalPages = (int) Math.ceil((double) totalProducts / productsPerPage);

	    // Đảm bảo trang hiện tại nằm trong phạm vi hợp lệ
	    page = Math.min(Math.max(page, 1), totalPages);

	    // Tính chỉ số bắt đầu và kết thúc của sản phẩm trên trang hiện tại
	    int startIndex = (page - 1) * productsPerPage;
	    int endIndex = Math.min(startIndex + productsPerPage, totalProducts);

	    // Lấy danh sách sản phẩm trên trang hiện tại
	    List<Product> productsOnPage = filteredProducts.subList(startIndex, endIndex);

	    // Truyền các thông tin vào model
	    model.addAttribute("product", productsOnPage);
	    model.addAttribute("keyword", keyword);
	    model.addAttribute("title", "Danh sách sản phẩm");
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("currentPage", page);

	    return "product/pro";
	}
	@RequestMapping(value = "cart", params = { "id_product" })
	public String addToCart(ModelMap model, HttpSession session, @RequestParam("id_product") int productId) {
		Account user = (Account) session.getAttribute("account");

		if (user == null) {
			System.out.println("Lỗi không tìm thấy user");

		} else {
			boolean add = cartDAO.addCart(productId, user.getEmail(),1);
			System.out.print(add);
		}
		return "redirect:/product/" + productId + ".htm";
	}

	// TÌM KIẾM SẢM PHẨM THEO productname
	@RequestMapping(value = "search", method = RequestMethod.GET)
    public String searchByProductName(ModelMap model, @RequestParam(value = "productname", required = false) String productname) {
        String title = "Danh sách sản phẩm";
        List<Product> searchResults = new ArrayList<>();

        if (productname != null && !productname.trim().isEmpty()) {
            title = "Tìm kiếm theo tên sản phẩm: " + productname.trim();
            logger.info("Đã nhận tham số productName từ URL: {}", productname);
            searchResults = productDAO.searchByProductName(productname.trim());
        }

        model.addAttribute("product", searchResults);
        model.addAttribute("keyword", productname);
        model.addAttribute("title", title);

        return "product/index";
    }
}
