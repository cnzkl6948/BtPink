package xyz.btpink.www;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

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
import xyz.btpink.www.vo.Board;
import xyz.btpink.www.vo.ClassVO;
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
	ClassDAO classDao;
	
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
	
	
	// 반 등록 후에 admincontroller로 이동시킬것
//	@RequestMapping(value = "classInsert", method = RequestMethod.GET)
//	public String classManagement(Locale locale, Model model,  ClassVO cla) {
//		logger.info("Go! classInsert");
//		int classNo = cDao.selectNextClassNo();
//		cla.setClassNo("c"+classNo);
//		System.out.println(cla);
//		int result = cDao.classInsert(cla);
//		System.out.println(result);
//		return "redirect:/classManagement";
//	}
	
	//반이름 중복검사
//	@RequestMapping(value = "classNameCheck", method = RequestMethod.GET)
//	public @ResponseBody String classNameCheck(ClassVO cla, Locale locale, Model model) {
//		System.out.println(cla);
//		ClassVO checkedClass = cDao.duplicateNameCheck(cla);
//		try{
//			return checkedClass.getClassName();
//		}catch(Exception e){
//			return "1";
//		}
//	}
	
	//선생님이름으로 정보 불러오기
//	@RequestMapping(value = "/teacherNameCheck", method = RequestMethod.GET)
//	public @ResponseBody ArrayList<Account> teacherNameCheck(Account aco, Locale locale, Model model) {
//		System.out.println(aco);
//		ArrayList<Account> checkedTeacher = aDao.duplicateTeacherCheck(aco);
//		return checkedTeacher;
//	}
	
	//반 관리 메뉴
//	@RequestMapping(value = "/classManagement", method = RequestMethod.GET)
//	public String classManagement(Locale locale, Model model) {
//		logger.info("Go! classManagement");
//		ArrayList<ClassVO> claList = cDao.allClassList();
//		model.addAttribute("claList", claList);
//		return "AdminPage/classManagement";
//	}
	
	
	


}
