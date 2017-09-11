package xyz.btpink.www.admin;

import java.util.ArrayList;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.btpink.www.HomeController;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Student;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "joinCheck", method = RequestMethod.GET)
	public @ResponseBody ArrayList<Student> home(Student st,Locale locale, Model model) {
		System.out.println(st);
		ArrayList<Student> list = new ArrayList<>();
		list.add(new Student("김건호", null, null, null, "A", "2012/09/11", "안동시", null, "남", "", ""));
		list.add(new Student("호건김", null, null, null, "B", "2012/08/11", "안동시", null, "남", "", ""));
		
		return list;
	}
}
