package kr.co.mirak.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.mirak.HomeController;
import kr.co.mirak.cart.CartService;
import kr.co.mirak.cart.CartVO;

@Controller
public class CartController {
	
	@Autowired 
	private CartService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/cartClientList", method = RequestMethod.GET)	// client cart
	public String cartList(Model model, CartVO vo, HttpSession session) {
		
		String mem_id = (String)session.getAttribute("mem_id");
		vo.setMem_id(mem_id);
		System.out.println("mem_id : "+mem_id);
		
		List<CartVO> list = service.cartClientList(vo);
		model.addAttribute("cartList", list);
		System.out.println(list);
		return "cart/cart";
	}
	
	@RequestMapping(value = "/cartAdminList", method = RequestMethod.GET)	// admin cart
	public String cartList2(Model model) {
		
		List<CartVO> list = service.cartAdminList();
		model.addAttribute("cartList", list);
		return "cart/cart_admin";
	}
	
	@RequestMapping(value = "/goPay", method = RequestMethod.POST)	// 결제하기
	public String goPay(Model model, HttpSession session) {

		model.addAttribute("CartVO", "");

		return "pay/pay";
	}
	
}