package xyz.btpink.www.Users;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UsersController {
	
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("login");
		
		
		return "redirect:/www";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model, HttpSession session) {
		logger.info("logout");
		session.invalidate();
		return "redirect:/www";
	}
	
}
