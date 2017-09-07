package xyz.btpink.www.mainpage;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import xyz.btpink.www.HomeController;
@Controller
public class MainPageController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "course-single", method = RequestMethod.GET)
	public String course() {
	
		
		return "MainPage/course-single";
	}
	@RequestMapping(value = "teachers", method = RequestMethod.GET)
	public String teachers() {
	
		
		return "MainPage/Teachers";
	}
}
