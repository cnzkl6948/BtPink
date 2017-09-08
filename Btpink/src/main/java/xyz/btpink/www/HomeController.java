package xyz.btpink.www;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private static String lat;
	private static String lon;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home!");
		return "home";
	}
	
	
	@RequestMapping(value = "maptest", method = RequestMethod.GET)
	public String maptest(Locale locale, Model model) {
		logger.info("maptest");
		model.addAttribute("lat", lat);
		model.addAttribute("lon", lon);
		return "/getMap/maptest";
	}
	
	@RequestMapping(value = "getMap", method = RequestMethod.POST)
	public @ResponseBody String sendLocation(Locale locale, Model model) {
		logger.info("getMap");
		String info = lat+","+lon;
		System.out.println(info);
		return info;
	}
	
	@RequestMapping(value = "locationSend", method = RequestMethod.GET)
	public String locationSend2(Locale locale, Model model) {
		logger.info("locationSend get");
		return "/getMap/locationSend";
	}
	
	@RequestMapping(value = "locationSend", method = RequestMethod.POST)
	public String locationSend(String latt, String lont) {
		logger.info("locationSend");
		lat = latt;
		lon = lont;
		System.out.println(lat+" : "+ lon);
		return "/getMap/locationSend";
	}
}
