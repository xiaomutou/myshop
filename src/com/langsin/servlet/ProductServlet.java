package com.langsin.servlet;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.langsin.dao.ProductDao;
import com.langsin.model.Product;
import com.langsin.util.CarSupport;
import com.langsin.util.Page;

public class ProductServlet extends BasicServlet {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse resp) {
		
	}
	
	public void addproduct(HttpServletRequest req, HttpServletResponse resp,Map<String,String> map) throws ParseException, IOException{
		
//		String pname = req.getParameter("pname");
//		
//		String price = req.getParameter("price");
//		String pdate = req.getParameter("pdate");
//		String image = req.getParameter("image");
//		String content = req.getParameter("content");
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		String pname = map.get("pname");
		String price = map.get("price");
		String pdate = map.get("pdate");
		String image = map.get("image");
		String content = map.get("content");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		ProductDao pd = new ProductDao();
		Product product = new Product();
		product.setPname(pname);
		product.setPrice(Double.parseDouble(price));
		product.setPdate(sdf.parse(pdate));
		product.setImage(image);
		product.setContent(content);
		pd.addProduct(product);
		
		resp.sendRedirect("admin/product/addproduct.jsp");
	}
	
	public void index(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		ProductDao pd = new ProductDao();
		List<Product> list = pd.getAllProduct();
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("index.jsp").forward(req,resp);
		
		
	}
	
	public void indexpage(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		ProductDao pd = new ProductDao();
	
		String currentPage = req.getParameter("current");
		int cp = 0;
		if(currentPage!=null && currentPage.matches("\\d+")){
			cp = Integer.parseInt(currentPage);
		}else{
			cp = 1;
		}
		
		Page page = new Page(pd.getTotalCount());
		page.setCurrentpage(cp);
		
		List<Product> list = pd.getProductByPage(page);
		
		page.setData(list);
		
		req.setAttribute("page", page);
		
		req.getRequestDispatcher("product/index.jsp").forward(req,resp);
	}
	
	public void addcar(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		String id = req.getParameter("id");
		ProductDao pd = new ProductDao();
		Product product = pd.getProductById(Integer.parseInt(id));
		HttpSession session = req.getSession();
		
		List<CarSupport> car = (List<CarSupport>) session.getAttribute("car");
		CarSupport hasCarSupport = null;
		if(car == null){
			car = new ArrayList<CarSupport>();
		}else{
			for(CarSupport cs : car){
				if(cs.getId() == product.getId()){
					hasCarSupport = cs;
					break;
				}
			}
		}
		if(hasCarSupport !=null){
			car.remove(hasCarSupport);
			hasCarSupport.setCount(hasCarSupport.getCount()+1);
			car.add(hasCarSupport);
		}else{
			CarSupport cs = new CarSupport();
			cs.setId(product.getId());
			cs.setProduct(product);
			cs.setCount(1);
			car.add(cs);
		}
		
		session.setAttribute("car", car);
		resp.sendRedirect("product?tag=indexpage");
	}
	
	public void managercar(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		resp.sendRedirect("product/showcar.jsp");
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
