package xyz.btpink.www.admin;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import xyz.btpink.www.dao.AccountDAO;
import xyz.btpink.www.dao.AttendenceDAO;
import xyz.btpink.www.dao.ClassDAO;
import xyz.btpink.www.dao.StudentDAO;
import xyz.btpink.www.dao.TeacherDAO;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Attendence;
import xyz.btpink.www.vo.ClassVO;
import xyz.btpink.www.vo.Student;
import xyz.btpink.www.vo.Teacher;
import xyz.btpink.www.vo.Aapply;

@Controller
public class AdminController {

	@Autowired
	StudentDAO sdao;

	@Autowired
	AttendenceDAO adao;

	@Autowired
	TeacherDAO tdao;

	@Autowired
	private String path;

	@Autowired
	ClassDAO cdao;

	@Autowired
	AccountDAO accdao;

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	// 선생님 페이지
	@RequestMapping(value = "/adminPage", method = RequestMethod.GET)
	public String adminPage(HttpSession session, Locale locale, Model model) {
		logger.info("Go! adminPage");
		Account account = (Account) session.getAttribute("User");
		System.out.println(account.getId());
		model.addAttribute("TeacherNotice", tdao.selectDemand(account.getId()));
		System.out.println(tdao.selectDemand(account.getId()));
		return "adminPage";
	}

	// 출석체크
	@RequestMapping(value = "/ACheck", method = RequestMethod.GET)
	public String ACheck(Locale locale, Model model) {
		logger.info("Go! ACheck");
		return "AdminPage/ACheck";
	}

	// 회원가입 승인
	@RequestMapping(value = "/Aapply", method = RequestMethod.GET)
	public String Aapply(Locale locale, Model model) {
		logger.info("Go! Aapply");
		ArrayList<Aapply> accList = accdao.accountCheck();
		System.out.println("aJax : "+accList);
		model.addAttribute("AapplyList", accList);
		return "AdminPage/Aapply";
	}

	@RequestMapping(value = "sign", method = RequestMethod.POST)
	public @ResponseBody String sign(Account account, String memNo, Model model) {
		System.out.println("sign : "+account);
		System.out.println(memNo);
		int a=accdao.signUpdate(account);
		System.out.println(a);
		return "succes";
	}

	// 반 관리 메뉴
	@RequestMapping(value = "/classManagement", method = RequestMethod.GET)
	public String classManagement(Locale locale, Model model) {
		logger.info("Go! classManagement");
		return "AdminPage/classManagement";
	}

	// 학생등록
	@RequestMapping(value = "/Sapply", method = RequestMethod.GET)
	public String Sapply(Locale locale, Model model) {
		logger.info("Go! Sapply");
		return "AdminPage/Sapply";
	}

	// url 생성
	@RequestMapping(value = "/Sapply", method = RequestMethod.POST)
	public @ResponseBody String[] Sapply(HttpSession session, Locale locale, Model model, Student student,
			MultipartFile file, RedirectAttributes rttr) throws Exception {
		logger.info("Save Sapply");
		System.out.println(student);
		System.out.println("파일테스트 : " + file);

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String savedFilename = sdf.format(new Date());
		savedFilename = savedFilename + new Date().getTime();
		String filename = "S" + savedFilename;

		// String filename = file.getOriginalFilename();

		try {
			File out = new File(path + File.separator + filename + ".jpg");
			file.transferTo(out);
		} catch (Exception e) {
			// TODO: handle exception
		}
		rttr.addAttribute("filename", filename);

		Thread.sleep(3000); // 서버에 이미지 파일이 저장되기 까지의 딜레이

		// String url =
		// "https://www.btpink.xyz/www/resources/Sapply/"+filename+".jpg";
//		String url = "https://suenghan.btpink.xyz/www/resources/Sapply/" + filename + ".jpg";
//		String url = "https://dahuin.btpink.xyz/www/resources/Sapply/" + filename + ".jpg";
		String url = "https://geonho.btpink.xyz/www/resources/Sapply/" + filename + ".jpg";

		String[] array = { url, filename };

		return array;
	}

	// 학생넘버 등록
	@RequestMapping(value = "/secondform", method = RequestMethod.POST)
	public @ResponseBody String secondform(HttpSession session, String personID, Locale locale, Model model,
			Student student, MultipartFile file, RedirectAttributes rttr) throws Exception {
		logger.info("Update Sapply");

		System.out.println(student.getStdno());

		int age = ageCal(student); // 나이계산 메소드 호출
		student.setAge(age);
		String filename = file.getOriginalFilename();
		student.setParentno("dummy");// 학부모 번호를 불러오는 과정 정해질때까지 더미로...
		student.setImage(filename);
		student.setLikeid("");
		student.setHateid("");

		Account loginuser = (Account) session.getAttribute("User");
		System.out.println(loginuser);
		String memno = loginuser.getMemNo();
		ClassVO selClass = cdao.selectClass(memno);
		student.setClassno(selClass.getClassNo());

		System.out.println(student);

		int result = sdao.insert(student);
		if (result == 1) {
			System.out.println("DB입력성공");
		}

		return "success";
	}

	// 나이계산 메소드
	public int ageCal(Student student) {
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		Date currenttime = new Date();
		Date birthday = null;
		try {
			birthday = formatter.parse(student.getBirth());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
		}
		// System.out.println("현재시간" + currenttime);
		// System.out.println("생일" + birthday);

		long diff = currenttime.getTime() - birthday.getTime();
		long diffdays = diff / (24 * 60 * 60 * 1000);
		int age = (int) diffdays / 365;
		System.out.println("나이 : " + age);

		return age;

	}

	// 출석부
	@RequestMapping(value = "/Slist", method = RequestMethod.GET)
	public String Slist(Locale locale, Model model) {
		logger.info("Go! Slist");

		ArrayList<Attendence> result = adao.selectStd();
		System.out.println(result);
		model.addAttribute("list", result);

		return "AdminPage/Slist";
	}

	// 인원확인
	@RequestMapping(value = "/PCheck", method = RequestMethod.GET)
	public String PCheck(Locale locale, Model model) {
		logger.info("Go! PCheck");
		return "AdminPage/PCheck";
	}

	// 감정달력
	@RequestMapping(value = "/emotionCal", method = RequestMethod.GET)
	public String emotionCal(Locale locale, Model model) {
		logger.info("Go! emotionCal");
		return "AdminPage/emotionCal";
	}

	// 감정달력
	@RequestMapping(value = "/getEmotionList", method = RequestMethod.POST)
	public String getEmotionList(String stdno, Model model) {
		logger.info("Go! getEmotionList");
		ArrayList<Attendence> result = adao.getEmotionList(stdno);
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
		return "AdminPage/emotionCal";
	}
	
	//반 배정 초기값 불러오기
	@RequestMapping(value = "/autoSplit", method = RequestMethod.GET)
	public String goAutoSplit(Locale locale, Model model) {
		logger.info("GoGoGo! autoSplit");
		
		ArrayList<Student> stuList = sdao.allStuList();
		int allCount = stuList.size();
		int count5 = 0;
		int count6 = 0;
		int count7 = 0;
		int mCount5 = 0;
		int mCount6 = 0;
		int mCount7 = 0;
		int wCount5 = 0;
		int wCount6 = 0;
		int wCount7 = 0;
		
		for(Student s : stuList){
			if(s.getAge() == 5){
				count5++;
				if(s.getGender().equals("M")){
					mCount5++;
				}else wCount5++;
			}else if(s.getAge() == 6){
				count6++;
				if(s.getGender().equals("M")){
					mCount6++;
				}else wCount6++;
			}else{
				count7++;
				if(s.getGender().equals("M")){
					mCount7++;
				}else wCount7++;
			}
		}
		
		
		System.out.println("allCount : "+allCount+" , count5 : "+count5+" , count6 : "+count6+" , count7 : "+count7+" , mcount5 : "+mCount5+" , mCount6 : "+mCount6+" , mCount7 : "+mCount7+" , wCount5 : "+wCount5+" , wCount6 : "+wCount6+" , wCount7 : "+wCount7);
		
		model.addAttribute("stuList", stuList);
		model.addAttribute("allCount", allCount);
		model.addAttribute("count5", count5);
		model.addAttribute("count6", count6);
		model.addAttribute("count7", count7);
		model.addAttribute("mCount5", mCount5);
		model.addAttribute("mCount6", mCount6);
		model.addAttribute("mCount7", mCount7);
		model.addAttribute("wCount5", wCount5);
		model.addAttribute("wCount6", wCount6);
		model.addAttribute("wCount7", wCount7);
		
		return "AdminPage/autoSplit";
	}
	
	@RequestMapping(value = "/autoSplit", method = RequestMethod.POST)
	public @ResponseBody int autoSplit(Student stu, Model model) {
		logger.info("autoSplit POST");
		int result = sdao.changeStuHogam(stu);
		return result;
	}
	
	//반 배정 알고리즘
	@RequestMapping(value = "/calculate", method = RequestMethod.GET)
	public String calculate(Locale locale, Model model) {
		logger.info("GoGoGo! calculate");
		ArrayList<Student> stuList = sdao.allStuList();
		
		ArrayList<Student> five = new ArrayList<>();
		ArrayList<Student> fiveM = new ArrayList<>();
		ArrayList<Student> fiveW = new ArrayList<>();
		ArrayList<Student> six = new ArrayList<>();
		ArrayList<Student> sixM = new ArrayList<>();
		ArrayList<Student> sixW = new ArrayList<>();
		ArrayList<Student> seven = new ArrayList<>();
		ArrayList<Student> sevenM = new ArrayList<>();
		ArrayList<Student> sevenW = new ArrayList<>();
		
		//나이별 / 성별 구분
		for(Student s : stuList){
			if(s.getAge() == 5){
				five.add(s);
				if(s.getGender().equals("M")){
					fiveM.add(s);
				}else{
					fiveW.add(s);
				}
			}else if(s.getAge() == 6){
				six.add(s);
				if(s.getGender().equals("M")){
					sixM.add(s);
				}else{
					sixW.add(s);
				}
			}else {
				seven.add(s);
				if(s.getGender().equals("M")){
					sevenM.add(s);
				}else{
					sevenW.add(s);
				}
			}
		}
		
		//classList 불러옴
		ArrayList<ClassVO> classList = cdao.allClass();
		
		
		return "redirect:autoSplit";
	}
}
