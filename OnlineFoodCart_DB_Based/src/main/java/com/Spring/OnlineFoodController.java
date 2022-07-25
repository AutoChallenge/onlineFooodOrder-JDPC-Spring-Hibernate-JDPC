package com.Spring;

import java.io.IOException;
import java.util.*;
import java.util.Optional;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Spring.category.CategoryService;
import com.Spring.category.category;
import com.Spring.users.*;

@Controller
public class OnlineFoodController
{
	@Autowired
	UserService usrserv;
	
	
	@Autowired
	CategoryService catgry;
	
	
	
/******************* Home Page **************************/
	/*@GetMapping("/")
	public String loginpage()
	{
		return "landing";
	}*/
	
	
	/******************* Home Page **************************/
	@GetMapping("/")
	public String commonpage()
	{
		return "common";
	}
	
	
	/* ***************order page ******/
	/*public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		   String cityName = request.getParameter("cityname"); //retrieving value from post request.
		   //do your necessary coding.
		   //if(validation error or as your wish){
		      List<String> cityList = new ArrayList<String>();
		      cityList.add("england");
		      cityList.add("france");
		      cityList.add("spain");
		      request.setAttribute("cityList",cityList);
		      request.setAttribute("selectedCity",cityName);

		      RequestDispatcher dispatcher = request.getRequestDispatcher("menu.jsp");  
		      dispatcher.forward(request, response);
		      response.sendRedirect("list_servlet");
		   //} else {
		      //do other things
		  // }
		}	*/
	
/****************************** AdminUser ***********************************/
	
	
	/*********login page ********/
	
	@GetMapping("/login")
	public String loginform()
	{
		return "loginform";
	}
	
/*********login page ********/
	
	@GetMapping("/about")
	public String aboutform()
	{
		return "about";
	}
	

	
	/************check user ******************/
	@PostMapping("/checkuserlogin")
	public String checkuser(@RequestParam("usrnm") String unm , @RequestParam("pwd")String pwd,Model m)
	{
		Optional<userstbl> u = usrserv.searchByname(unm);
		/* if(u.isPresent()) */
		if(u.get().getUsername().equals("admin"))	
			{	

					return "adminpage";
			}
		else if(u.get().getUsername().equals("eswar")) {
			m.addAttribute("catlist",catgry.allcat());
			return "menu";
		}
		else {
		
		return "loginform";		
		}
	}	
	
/***************************** Order Details **************************************/
	
	
	@GetMapping("/orders/{id}")
	public String orderform(Model m , @PathVariable("id")int cid)
	{
		
		category c = catgry.findID(cid);		
		ArrayList<category> L1 = new ArrayList<category>();
		L1.add(c);
		
		m.addAttribute("orders_rec",L1);
		
		return "order";
	}
	///add_to_order/${t.catid}
	
/***************************** Order Details **************************************/
	
	
	@GetMapping("/add_to_order/{id}")
	public String addToOrder(Model m , @PathVariable("id")int cid)
	{
		
		category c = catgry.findID(cid);		
		ArrayList<category> L1 = new ArrayList<category>();
		L1.add(c);
		
		m.addAttribute("add_to_order_rec",L1);
		
		return "add_to_order";
	}
	/***************************** Products Details **************************************/
	
	@GetMapping("/product")
	public String productform()
	{
		return "product";
	}
	
	/************Menu******************/
	
	@GetMapping("/menu")
	public String menuform(Model m)	
	{
		m.addAttribute("catlist",catgry.allcat());
		return "menu";
	}	
		
/***************************** Products Details **************************************/
	
	@GetMapping("/landing")
	public String landingform()
	{
		return "landing";
	}
		
	
	
	
	
	/*****************************Category Details******************************/
	
	@GetMapping("/category")
	public String categoryform(Model m)	
	{	
		m.addAttribute("catlist",catgry.allcat());
		return "category";
	}
	
	
	@GetMapping("/addnewcatform")
	public String cat_addform()
	{
		return "add_catgry_form";
	}
	
	
	@PostMapping("/add_cat")
	public String add_cate(@RequestParam("catnm")String catnm,@RequestParam("catfile") String f ,Model m)
	{
		category c = new category();
		c.setCatnm(catnm);
		c.setImage(f);
		catgry.add_category(c);
		
		m.addAttribute("catlist",catgry.allcat());
		
		return "category";
	}
	
	
	@GetMapping("/updatecat/{id}")
	public String updatecat(Model m , @PathVariable("id")int cid)	
	{
		category c = catgry.findID(cid);	
		ArrayList<category> L1 = new ArrayList<category>();
		L1.add(c);
		
		m.addAttribute("update_rec",L1);
		
		return "cat_update"; 		
	}
	
	@PostMapping("/updatecat")
	public String update_cate(@RequestParam("cnm")String catnm,@RequestParam("image") String f ,@RequestParam("cid")int id ,Model m)
	{

		category c = catgry.findID(id);	
		c.setCatnm(catnm);
		c.setImage(f);
		
		catgry.updatecat(c);
		
		m.addAttribute("catlist",catgry.allcat());
		
		return "category";
	}
	
	
	@GetMapping("/deletecat/{id}")
	public String deletecat(Model m , @PathVariable("id")int cid)	
	{
		catgry.deleteId(cid);	
			
		m.addAttribute("catlist",catgry.allcat());
		
		return "category";	
	}

	
	
	
	
	/************************* Contact details*********************************/
	
	@GetMapping("/contact")
	public String contactform()
	{
		return "contact";
	}
}
