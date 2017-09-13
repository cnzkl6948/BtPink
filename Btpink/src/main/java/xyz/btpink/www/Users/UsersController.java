package xyz.btpink.www.Users;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import xyz.btpink.www.dao.ParentDAO;
import xyz.btpink.www.dao.StudentDAO;
import xyz.btpink.www.dao.TeacherDAO;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Parent;
import xyz.btpink.www.vo.Student;
import xyz.btpink.www.vo.Teacher;

@Controller
public class UsersController {
	@Autowired
	StudentDAO studentDao;
	@Autowired
	ParentDAO parentDao;
	@Autowired
	TeacherDAO teacherDao;
	@Autowired
	AccountDAO accountDao;
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	//로그인
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(Account account, Locale locale, Model model,HttpSession session) {
		Account ac=accountDao.login(account);
		if(ac.getId()!=null){
			session.setAttribute("User", ac);
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model, HttpSession session) {
		logger.info("logout");
		session.invalidate();
		return "redirect:/";
	}
	//회원가입
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(Account account, Parent parent, Teacher teacher, Student student, Locale locale, Model model) {
		parent.setMemNno(num());
		String num = num();
		//if일경우 부모님(p)  else일결우 선생님(t)
		if (account.getType().equalsIgnoreCase("p")) {
			account.setMemNno("p"+num);
			student.setParentno(parent.getMemNo());
			accountDao.insert(account);
			parentDao.insert(parent);
			studentDao.parentUpdate(student);
		}else{
			account.setMemNno("t"+num);
			teacherDao.insert(teacher);
		}
		return "redirect:/";
	}

	//중복 검사
	@RequestMapping(value = "idOverlap", method = RequestMethod.GET)
	public @ResponseBody String idOverlap(Account account, Locale locale, Model model) {
		System.out.println(account);
		Account ac=accountDao.idOverlap(account);
		System.out.println(ac);
		try{
		return ac.getId();
		}catch(Exception e){
			return "1";
		}
	}
	//num 생성
	public String num() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String savedFilename = sdf.format(new Date());
		savedFilename = savedFilename + new Date().getTime();

		return savedFilename;
	}
	//학생이 있는지 체크
	@RequestMapping(value = "joinCheck", method = RequestMethod.GET)
	public @ResponseBody ArrayList<Student> home(Student st, Locale locale, Model model) {
		ArrayList<Student> ckList = studentDao.joinCheck(st);
		System.out.println(ckList);
		return ckList;
	}
	@RequestMapping(value = "myson", method = RequestMethod.GET)
	public String MySon(Student st, Locale locale, Model model) {
		ArrayList<Student> ckList = studentDao.joinCheck(st);
		System.out.println(ckList);
		return "MySon";
	}
}
