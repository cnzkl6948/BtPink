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
	//선생님 페이지
	@RequestMapping(value = "adminPage", method = RequestMethod.GET)
	public String adminPage(Locale locale, Model model) {
		logger.info("Go! adminPage");
		return "adminPage";
	}
	
	//출석체크
	@RequestMapping(value = "ACheck", method = RequestMethod.GET)
	public String ACheck(Locale locale, Model model) {
		logger.info("Go! ACheck");
		return "AdminPage/ACheck";
	}
	

	//학생등록
		@RequestMapping(value = "Sapply", method = RequestMethod.GET)
		public String Sapply(Locale locale, Model model) {
			logger.info("Go! Sapply");
			return "AdminPage/Sapply";
		}

	//인원확인
	@RequestMapping(value = "PCheck", method = RequestMethod.GET)
	public String PCheck(Locale locale, Model model) {
		logger.info("Go! PCheck");
		return "AdminPage/PCheck";
	}

}
