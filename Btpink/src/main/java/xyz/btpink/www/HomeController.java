package xyz.btpink.www;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.btpink.www.dao.AccountDAO;
import xyz.btpink.www.dao.BoardDAO;
import xyz.btpink.www.dao.ClassDAO;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Board;
import xyz.btpink.www.vo.ClassVO;
import xyz.btpink.www.vo.Student;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	BoardDAO dao;
	
	@Autowired
	ClassDAO cDao;
	
	@Autowired
	AccountDAO aDao;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session, Locale locale, Model model) {
		ArrayList<Board> board = dao.getHome();
		model.addAttribute("boardlist", board);
		return "home";
	}
	
	
	
	
	


}
