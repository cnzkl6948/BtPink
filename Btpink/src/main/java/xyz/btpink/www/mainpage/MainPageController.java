package xyz.btpink.www.mainpage;

import java.util.ArrayList;
import java.util.Calendar;

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
import xyz.btpink.www.dao.ClassDAO;
import xyz.btpink.www.dao.ParentDAO;
import xyz.btpink.www.dao.StudentDAO;
import xyz.btpink.www.dao.TeacherDAO;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Attendence;
import xyz.btpink.www.vo.Student;

@Controller
public class MainPageController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	StudentDAO sdao;
	
	@Autowired
	AttendenceDAO attendenceDAO;

	@Autowired
	ParentDAO parentDAO; // 부모 관련 데이터 처리 객체
	
	@Autowired
	TeacherDAO tdao;

	@Autowired
	ClassDAO cdao;
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
		Account account = (Account) session.getAttribute("User");
		System.out.println("myson : "+account);
		
		String myStdNo = parentDAO.myStdno(account.getMemNo());
		
		Student mySon = sdao.mySon(myStdNo);
		mySon.setBirth(mySon.getBirth().split(" ")[0]);
		
		String teacher = tdao.mySonTeacher(mySon.getClassno());
		
		mySon.setClassno(cdao.mySonClass(mySon.getClassno()));
		
		
		
		model.addAttribute("teacher", teacher);
		model.addAttribute("mySon", mySon);
		
		ArrayList<Attendence> result = attendenceDAO.selectStudent(account);
		System.out.println(result);
		int cnt = result.size();
		int count = 0;
		String emotion = "";
		for (Attendence a : result) {
			count++;
			// DB에 저장되어 있던 감정
			String emo = a.getEmotion();
			System.out.println(emo);
			// DB날짜를 년 월 일로 나눔
			int gYear = Integer.parseInt(a.getToday().split(" ")[0].split("-")[0]);
			int gMonth = Integer.parseInt(a.getToday().split(" ")[0].split("-")[1]);
			String gDay = a.getToday().split(" ")[0].split("-")[2];

			Calendar cal = Calendar.getInstance();
			// 현재 년도, 월, 일
			int year = cal.get(cal.YEAR);
			int month = cal.get(cal.MONTH) + 1;

			int eMonth = gMonth - month;
			int eYear = gYear - year;

			// 감정 별 색상 지정
			String color = "";
			try {
				switch (emo) {
				case "anger":
					color += "#f56954"; // red
					break;
				case "fear":
					color += "#000000"; // yellow
					break;
				case "sadness":
					color += "#0073b7"; // blue
					break;
				case "surprise":
					color += "#00c0ef"; // aqua
					break;
				case "neutral":
					color += "#00a65a"; // green
					break;
				case "happiness":
					color += "#f39c12"; // yellow
					break;
				case "contempt":
					color += "#DF01A5"; // hotpink
					break;
				case "disgust":
					color += "#8A2908"; // brown
					break;
				default:
					color += "#FFFFFF"; // white
					break;

				}

				emotion += "{";
				emotion += "title          : '" + emo + "',";
				emotion += "start          : new Date(y+" + eYear + ", " + "m+" + eMonth + ", " + gDay + "),";
				emotion += "allDay          : true,";
				emotion += "backgroundColor: '" + color + "',";
				emotion += "borderColor    : '" + color + "'";

				if (count == cnt) {
					emotion += "}";
				} else {
					emotion += "},";
				}
			} catch (Exception e) {
				System.err.println("결석");
			}

		}
		System.out.println(emotion);
		model.addAttribute("emotionEvent", emotion);
		String className = parentDAO.getClassName(account.getId());
		model.addAttribute("className", className);
		return "MainPage/MySon";
	}

}
