package xyz.btpink.www.mainpage;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import xyz.btpink.www.HomeController;
import xyz.btpink.www.dao.AttendenceDAO;

@Controller
public class MainPageController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	AttendenceDAO attendenceDAO;
	
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
	public String kindergarten(Model model) {
			
//		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yy-MM", Locale.KOREA );
//		Date currentTime = new Date ();
//		String date = mSimpleDateFormat.format ( currentTime );
//		System.out.println ( "현재 데이트"+date );
//		attendenceDAO.selectToday(date);
//		
		return "MainPage/MySon";
	}
}
