package xyz.btpink.www.admin;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
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
import xyz.btpink.www.util.Split;
import xyz.btpink.www.vo.Aapply;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Attendence;
import xyz.btpink.www.vo.ClassVO;
import xyz.btpink.www.vo.Student;

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
		System.out.println("타입 확인 : " + account.getType());
		
		if (!account.getType().equals("admin")) { //어드민이 아닐때

			System.out.println("초기확인작업 시작");

			String memno = account.getMemNo(); // 멤버 넘버 가져옴
			ClassVO selClass = cdao.selectClass(memno); // 멤버 넘버에 할당된 클래스 VO 가져옴
			String classno = selClass.getClassNo(); // 클래스 VO에 포함된 클래스 넘버 가져옴.

			if (selClass != null) { //어드민이 아닐때
				System.out.println("클래스 넘버 : " + classno);

				adao.initAtd(classno); // 출석부 표시전 초기 확인작업

				System.out.println("초기작업 종료");

				System.out.println(account.getId());
				model.addAttribute("TeacherNotice", tdao.selectDemand(account.getId()));
				System.out.println(tdao.selectDemand(account.getId()));
			}
			Attendence param = adao.getMainParam(classno);
			model.addAttribute("mainParam", param);

		}
		
		else{ //어드민일때
			
			Attendence param = adao.getMainParama();
			model.addAttribute("mainParam", param);
			
		}

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
		System.out.println("aJax : " + accList);
		model.addAttribute("AapplyList", accList);
		return "AdminPage/Aapply";
	}

	@RequestMapping(value = "sign", method = RequestMethod.POST)
	public @ResponseBody String sign(Account account, String memNo, Model model) {
		System.out.println("sign : " + account);
		System.out.println(memNo);
		int a = accdao.signUpdate(account);
		System.out.println(a);
		return "succes";
	}

	// 반 등록 
	@RequestMapping(value = "classInsert", method = RequestMethod.POST)
	public String classManagement(Locale locale, Model model, ClassVO cla) {
		logger.info("Go! classInsert");
		int classNo = cdao.selectNextClassNo();
		
		cla.setClassNo("c" + classNo);
		
		System.out.println(cla);
		
		int result = cdao.classInsert(cla);
		
		System.out.println(result);
		return "redirect:/classManagement";
	}

	// 반이름 중복검사
	@RequestMapping(value = "classNameCheck", method = RequestMethod.GET)
	public @ResponseBody String classNameCheck(ClassVO cla, Locale locale, Model model) {
		System.out.println(cla);
		ClassVO checkedClass = cdao.duplicateNameCheck(cla);
		try {
			return checkedClass.getClassName();
		} catch (Exception e) {
			return "1";
		}
	}

	// 선생님이름으로 정보 불러오기
	@RequestMapping(value = "teacherNameCheck", method = RequestMethod.GET)
	public @ResponseBody ArrayList<Account> teacherNameCheck(Account aco, Locale locale, Model model) {
		Account liar = new Account();
		liar.setName("No");
		
		ArrayList<Account> checkedTeacher = accdao.duplicateTeacherCheck(aco);
		ArrayList<Account> teaList = accdao.allTeahcerName(aco.getName());
		
		if (teaList.size()==0) {
			checkedTeacher.add(liar);
		}
		
		return checkedTeacher;
	}

	// 반 관리 메뉴
	@RequestMapping(value = "/classManagement", method = RequestMethod.GET)
	public String classManagement(Locale locale, Model model) {
		logger.info("Go! classManagement");
		ArrayList<ClassVO> claList = cdao.allClassList();
		model.addAttribute("claList", claList);
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

		 String url = "https://www.btpink.xyz/www/resources/Sapply/"+filename+".jpg";
		// String url = "https://suenghan.btpink.xyz/www/resources/Sapply/" +
		// filename + ".jpg";
		// String url = "https://dahuin.btpink.xyz/www/resources/Sapply/" +
		// filename + ".jpg";
//		String url = "https://geonho.btpink.xyz/www/resources/Sapply/" + filename + ".jpg";

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

		Account loginuser = (Account) session.getAttribute("User");
		System.out.println(loginuser);
		String memno = loginuser.getMemNo();
		System.out.println("dao 가기전 맴버넘버 가져오냐 ?" + memno);
		ClassVO selClass = cdao.selectClass(memno);
		System.out.println("selClass 다오 갔다옴" + selClass);
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
	public String Slist(HttpSession session, Locale locale, Model model, String day) {

		logger.info("Go! Slist");

		Account loginuser = (Account) session.getAttribute("User"); // 세션에서
																	// 로그인유저
																	// 계정정보를 가져옴
		
		if(loginuser.getType().equals("admin")){
			
			if (day == null) {
			
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			Date currenttime = new Date();
			String tempDate = sdf.format(currenttime);
			
			ArrayList<Attendence> result = adao.selectAtd(tempDate);
			model.addAttribute("list", result);
			model.addAttribute("selDay", tempDate);
			
			}
			
			else{
				
				Attendence atd = new Attendence();
				atd.setToday(day);

				ArrayList<Attendence> result = adao.selectAtd(day);
				System.out.println(result);
				model.addAttribute("list", result);
				model.addAttribute("selDay", day);	
				
			}
			
		}
		
		else{
		
		String memno = loginuser.getMemNo(); // 멤버 넘버 가져옴
		ClassVO selClass = cdao.selectClass(memno); // 멤버 넘버에 할당된 클래스 VO 가져옴
		String classno = selClass.getClassNo(); // 클래스 VO에 포함된 클래스 넘버 가져옴.

		if (day == null) {
			System.out.println("널 구문 진입");
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			Date currenttime = new Date();
			String tempDate = sdf.format(currenttime);

			System.out.println(tempDate);

			Attendence atd = new Attendence();
			atd.setClassno(classno);
			atd.setToday(tempDate);

			ArrayList<Attendence> result = adao.selectAtdt(atd); // 해당 클래스 넘버에
																	// 해당된 출석
																	// 목록을 가져옴

			System.out.println(result);
			model.addAttribute("list", result);
			model.addAttribute("selDay", tempDate);
		}

		else {
			System.out.println("낫널 구문 진입");
			Attendence atd = new Attendence();
			atd.setClassno(classno);
			atd.setToday(day);

			ArrayList<Attendence> result = adao.selectAtdt(atd);
			System.out.println(result);
			model.addAttribute("list", result);
			model.addAttribute("selDay", day);

		}
		
		}

		return "AdminPage/Slist";
	}

	// 출석부 날짜 변경
	@RequestMapping(value = "Slistday", method = RequestMethod.POST)
	public String Slistday(Locale locale, Model model, String day) {

		System.out.println(day);

		return "AdminPage/Slist";

	}

	// 출석 변경
	@RequestMapping(value = "atdCheck", method = RequestMethod.POST)
	public @ResponseBody String atdCheck(HttpSession session, Attendence attendence) {
		logger.info("Go! atdCheck!");

		System.out.println("atdcheck : " + attendence);

		if (attendence.getAbsent().equals("n"))
			attendence.setAbsent("0");
		else
			attendence.setAbsent("1");

		if (attendence.getEarly().equals("n"))
			attendence.setEarly("0");
		else
			attendence.setEarly("1");

		if (attendence.getLate().equals("n"))
			attendence.setLate("0");
		else
			attendence.setLate("1");

		if (attendence.getSick().equals("n"))
			attendence.setSick("0");
		else
			attendence.setSick("1");

		adao.updateCult(attendence);

		// System.out.println(Arrays.toString(ckdSend));
		// for(int i=0; i < ckdSend.length; i++){
		//
		// System.out.println(ckdSend[i]);
		// }
		//
		return "과연 성공할 것인가";
	}

	// 인원확인
	@RequestMapping(value = "/PCheck", method = RequestMethod.GET)
	public String PCheck(Locale locale, Model model) {
		logger.info("Go! PCheck");
		return "AdminPage/PCheck";
	}

	// 감정달력
	@RequestMapping(value = "/emotionCal", method = RequestMethod.GET)
	public String emotionCal(Locale locale, Model model, HttpSession session) {
		logger.info("Go! emotionCal");
		Account ac = (Account) session.getAttribute("User");
		System.out.println(ac);
		// 선생의 클래스 가져오기
		ClassVO cla = cdao.selectClass(ac.getMemNo());

		// 학생 목록 가져오기
		ArrayList<Student> stuList = sdao.selectStu(cla.getClassNo());

		model.addAttribute("stuList", stuList);
		return "AdminPage/emotionCal";
	}

	// 감정달력
	@RequestMapping(value = "/getEmotionList", method = RequestMethod.POST)
	public String getEmotionList(String stdno, Model model, HttpSession session) {
		logger.info("Go! getEmotionList");
		Account ac = (Account) session.getAttribute("User");
		System.out.println(ac);
		// 선생의 클래스 가져오기
		ClassVO cla = cdao.selectClass(ac.getMemNo());

		// 학생 목록 가져오기
		ArrayList<Student> stuList = sdao.selectStu(cla.getClassNo());

		model.addAttribute("stuList", stuList);
		
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

	// 반 배정 초기값 불러오기
	@RequestMapping(value = "/manualSplit", method = RequestMethod.GET)
	public String manualSplit(Locale locale, Model model, HttpSession session) {
		logger.info("GoGoGo! manualSplit");
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

		for (Student s : stuList) {
			if (s.getAge() == 5) {
				count5++;
				if (s.getGender().equals("M")) {
					mCount5++;
				} else
					wCount5++;
			} else if (s.getAge() == 6) {
				count6++;
				if (s.getGender().equals("M")) {
					mCount6++;
				} else
					wCount6++;
			} else {
				count7++;
				if (s.getGender().equals("M")) {
					mCount7++;
				} else
					wCount7++;
			}
		}

		System.out.println("allCount : " + allCount + " , count5 : " + count5 + " , count6 : " + count6 + " , count7 : "
				+ count7 + " , mcount5 : " + mCount5 + " , mCount6 : " + mCount6 + " , mCount7 : " + mCount7
				+ " , wCount5 : " + wCount5 + " , wCount6 : " + wCount6 + " , wCount7 : " + wCount7);

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

		return "AdminPage/manualSplit";
	}

	@RequestMapping(value = "/manualSplit", method = RequestMethod.POST)
	public @ResponseBody String manualSplitPost(Student stu, Locale locale, Model model, HttpSession session) {
		logger.info("GoGoGo! manualSplit");

		sdao.updateA(stu);

		return "AdminPage/manualSplit";
	}

	// 반 배정 초기값 불러오기
	@RequestMapping(value = "/autoSplit", method = RequestMethod.GET)
	public String goAutoSplit(Locale locale, Model model, HttpSession session) {
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

		for (Student s : stuList) {
			if (s.getAge() == 5) {
				count5++;
				if (s.getGender().equals("M")) {
					mCount5++;
				} else
					wCount5++;
			} else if (s.getAge() == 6) {
				count6++;
				if (s.getGender().equals("M")) {
					mCount6++;
				} else
					wCount6++;
			} else {
				count7++;
				if (s.getGender().equals("M")) {
					mCount7++;
				} else
					wCount7++;
			}
		}

		System.out.println("allCount : " + allCount + " , count5 : " + count5 + " , count6 : " + count6 + " , count7 : "
				+ count7 + " , mcount5 : " + mCount5 + " , mCount6 : " + mCount6 + " , mCount7 : " + mCount7
				+ " , wCount5 : " + wCount5 + " , wCount6 : " + wCount6 + " , wCount7 : " + wCount7);

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

		if (session.getAttribute("hateApply") == null) {
			session.setAttribute("hateApply", 0);
		}
		return "AdminPage/autoSplit";
	}

	// 싫어하는 ID DB에 적용
	@RequestMapping(value = "/autoSplit", method = RequestMethod.POST)
	public @ResponseBody String autoSplit(Student stu, Model model) {
		logger.info("autoSplit POST");
		System.out.println(stu);
		ArrayList<Student> stuList = sdao.allStuList();
		ArrayList<ClassVO> classList = cdao.allClass();
		String result = null;
		sdao.changeStuHogam(stu);
		for (Student s : stuList) {
			if (s.getClassno().equals(stu.getClassno()) && s.getStdno().equals(stu.getHateid())) {
				// 같은 반에 stu가 싫어하는 학번이 있다면
				System.out.println("같은 반에 stu가 싫어하는 학번이 있다면");

				// 1. stu를 싫어하는 학생이 없는 클래스
				ArrayList<String> like = new ArrayList<>();
				for (ClassVO c : classList) {
					if (!c.getClassNo().equals(stu.getClassno()) && c.getAge() == stu.getAge())
						like.add(c.getClassNo());
				}
				for (String cno : like) {
					for (Student s2 : stuList) {
						if (s2.getClassno().equals(cno) && s2.getHateid() != null) {
							// 들어가고자 하는 반에 hateid가 있는 사람
							System.out.println("들어가고자 하는 반에 hateid가 있는 사람 ");
							if (s2.getHateid().equals(stu.getStdno())) {
								// stu를 싫어하는 사람이 있다면 like에 클래스를 삭제하고 반복을 빠져나옴
								like.remove(cno);
								break;
							}
						}
					}
				}
				if (like.size() == 0) {
					result = "다른반에서 모두 받아주지 않음. 그대로 있으셈";
					System.out.println(result);
					break;
				} else {
					// 2. hateid를 싫어하지 않는 같은 성, 다른반의 학생
					System.out.println("2. hateid를 싫어하지 않는 같은 성, 다른반의 학생");
					for (String cno : like) {
						for (Student s3 : stuList) {

							if (s3.getGender().equals(stu.getGender()) && s3.getClassno().equals(cno)
									&& (s3.getHateid() == null || !s3.getHateid().equals(stu.getHateid()))) {
								// cno와 classno가 동일하고 hateid가 없거나 stu의 hateid를
								// 싫어하지 않는 s3
								System.out.println("cno와 classno가 동일하고 hateid가 없거나 stu의 hateid를 싫어하지 않는 s3");
								// 3. 교대
								s3.setClassno(stu.getClassno());
								stu.setClassno(cno);
								System.out.println("교체선수 : " + s3);
								sdao.updateA(s3);
								sdao.updateA(stu);
								result = "성공";
								System.out.println(result);
								break;
							}
						}
						break;
					}
				}
				break;
			}
		}

		return result;
	}

	// 반 배정 알고리즘
	@RequestMapping(value = "/calculate", method = RequestMethod.GET)
	public String calculate(Locale locale, Model model, HttpSession session) throws Exception {
		logger.info("GoGoGo! calculate");

		sdao.allClassnoNull(); // 모든 classno 초기화
		sdao.allHateNull(); // 모든 hateid 초기화
		ArrayList<Student> stuList = sdao.allStuList();
		ArrayList<ClassVO> classList = cdao.allClass();

		// 5/6/7 세 분할함.
		ArrayList<ClassVO> class5 = new ArrayList<>();
		ArrayList<ClassVO> class6 = new ArrayList<>();
		ArrayList<ClassVO> class7 = new ArrayList<>();
		for (ClassVO c : classList) {
			if (c.getAge() == 5)
				class5.add(c);
			else if (c.getAge() == 6)
				class6.add(c);
			else
				class7.add(c);
		}

		// 5세 블랙리스트 없이 평등분배
		int index = (int) (Math.random() * class5.size());
		for (Student s : stuList) {
			if (s.getAge() == 5 && s.getGender().equals("M")) {
				s.setClassno(class5.get(index).getClassNo());
				if (index == class5.size() - 1)
					index = 0;
				else
					index++;
			}
		}
		index = (int) (Math.random() * class5.size());
		for (Student s : stuList) {
			if (s.getAge() == 5 && s.getGender().equals("W")) {
				s.setClassno(class5.get(index).getClassNo());
				if (index == class5.size() - 1)
					index = 0;
				else
					index++;
			}
		}
		// 6세 블랙리스트 없이 평등분배
		index = (int) (Math.random() * class6.size());
		for (Student s : stuList) {
			if (s.getAge() == 6 && s.getGender().equals("M")) {
				s.setClassno(class6.get(index).getClassNo());
				if (index == class6.size() - 1)
					index = 0;
				else
					index++;
			}
		}
		index = (int) (Math.random() * class6.size());
		for (Student s : stuList) {
			if (s.getAge() == 6 && s.getGender().equals("W")) {
				s.setClassno(class6.get(index).getClassNo());
				if (index == class6.size() - 1)
					index = 0;
				else
					index++;
			}
		}
		// 7세 블랙리스트 없이 평등분배
		index = (int) (Math.random() * class7.size());
		for (Student s : stuList) {
			if (s.getAge() == 7 && s.getGender().equals("M")) {
				s.setClassno(class7.get(index).getClassNo());
				if (index == class7.size() - 1)
					index = 0;
				else
					index++;
			}
		}
		index = (int) (Math.random() * class7.size());
		for (Student s : stuList) {
			if (s.getAge() == 7 && s.getGender().equals("W")) {
				s.setClassno(class7.get(index).getClassNo());
				if (index == class7.size() - 1)
					index = 0;
				else
					index++;
			}
		}

		// 각 반별 리스트가 저장될 student를 생성
		Student[] goDB = new Student[classList.size()];
		// stdnolist가 저장될 list
		ArrayList<String> list = new ArrayList<>();
		Student dummy = new Student();
		// 1. 각 반별 목록을 저장한다. classList

		for (int i = 0; i < classList.size(); i++) {
			for (Student s : stuList) {
				if (classList.get(i).getClassNo().equals(s.getClassno())) {
					list.add(s.getStdno());
				}
			}
			dummy.setList(list);
			dummy.setClassno(classList.get(i).getClassNo());
			goDB[i] = dummy;

			list = new ArrayList<>();
			dummy = new Student();
		}

		// 2. db에 적용한다.
		for (int i = 0; i < goDB.length; i++) {
			sdao.update(goDB[i]);
			Thread.sleep(50);
		}

		//오늘 날짜의 출석 db가 있으면 모두 삭제
		adao.delAtd();
		

		stuList = sdao.allStuList();
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

		for (Student s : stuList) {
			if (s.getAge() == 5) {
				count5++;
				if (s.getGender().equals("M")) {
					mCount5++;
				} else
					wCount5++;
			} else if (s.getAge() == 6) {
				count6++;
				if (s.getGender().equals("M")) {
					mCount6++;
				} else
					wCount6++;
			} else {
				count7++;
				if (s.getGender().equals("M")) {
					mCount7++;
				} else
					wCount7++;
			}
		}
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
		session.setAttribute("hateApply", 1);

		return "AdminPage/autoSplit";
	}
}
