package xyz.btpink.www.admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "adminPage", method = RequestMethod.GET)
	public String adminPage(Locale locale, Model model) {
		logger.info("Go! adminPage");
		return "adminPage";
	}
	
}
