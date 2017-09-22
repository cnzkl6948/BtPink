package xyz.btpink.www.mainpage;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import xyz.btpink.www.HomeController;
import xyz.btpink.www.dao.AttendenceDAO;
import xyz.btpink.www.dao.ParentDAO;
import xyz.btpink.www.vo.Account;

@Controller
public class MainPageController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	AttendenceDAO attendenceDAO;
	
	@Autowired
	ParentDAO parentDAO;		//부모 관련 데이터 처리 객체
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/course-single", method = RequestMethod.GET)
	public String course() {
		return "MainPage/course-single";
	}

	@RequestMapping(value = "/teachers", method = RequestMethod.GET)
	public String teachers() {
		return "MainPage/Teachers";
	}

	@RequestMapping(value = "/MySon", method = RequestMethod.GET)
	public String kindergarten(Model model, HttpSession session) {
			
//		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yy-MM", Locale.KOREA );
//		Date currentTime = new Date ();
//		String date = mSimpleDateFormat.format ( currentTime );
//		System.out.println ( "현재 데이트"+date );
//		attendenceDAO.selectToday(date);
//		
		
		System.out.println("My Son In");
		Account account =  (Account) session.getAttribute("User");
		String className = parentDAO.getClassName(account.getId());
		model.addAttribute("className", className);
		return "MainPage/MySon";
	}
}
