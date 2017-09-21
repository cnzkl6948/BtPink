package xyz.btpink.www.admin;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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
		
		System.out.println("초기확인작업 시작");
		
		String memno = account.getMemNo(); // 멤버 넘버 가져옴
		ClassVO selClass = cdao.selectClass(memno); //멤버 넘버에 할당된 클래스 VO 가져옴
		String classno = selClass.getClassNo(); //클래스 VO에 포함된 클래스 넘버 가져옴.
		
		System.out.println("클래스 넘버 : " + classno);
	
		adao.initAtd(classno); // 출석부 표시전 초기 확인작업
		
		System.out.println("초기작업 종료");
				
		
		
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
		String url = "https://suenghan.btpink.xyz/www/resources/Sapply/" + filename + ".jpg";

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
	public String Slist(HttpSession session, Locale locale, Model model) {
		logger.info("Go! Slist");

		
		Account loginuser = (Account)session.getAttribute("User"); //세션에서 로그인유저 계정정보를 가져옴
		
		String memno = loginuser.getMemNo(); // 멤버 넘버 가져옴
		ClassVO selClass = cdao.selectClass(memno); //멤버 넘버에 할당된 클래스 VO 가져옴
		String classno = selClass.getClassNo(); //클래스 VO에 포함된 클래스 넘버 가져옴.
	
//		adao.initAtd(classno); // 출석부 표시전 초기 확인작업
		
		
		ArrayList<Attendence> result = adao.selectAtd(classno); //해당 클래스 넘버에 해당된 출석 목록을 가져옴

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
	//싫어하는 ID DB에 적용
	@RequestMapping(value = "/autoSplit", method = RequestMethod.POST)
	public @ResponseBody int autoSplit(Student stu, Model model) {
		logger.info("autoSplit POST");
		int result = sdao.changeStuHogam(stu);
		return result;
	}
	
	//반 배정 알고리즘
	@RequestMapping(value = "/calculate", method = RequestMethod.GET)
	public String calculate(Locale locale, Model model) throws Exception {
		logger.info("GoGoGo! calculate");
		ArrayList<Student> stuList = sdao.allStuList();
		ArrayList<ClassVO> classList = cdao.allClass();
		
		
		Split sp = new Split();
		ArrayList<Student> result = sp.ASplit(stuList, classList);
		
		//DB에 적용 stuList
		for(Student s : result){
			sdao.update(s);
			System.out.println(s.getStdno());
			Thread.sleep(10);
		}
		
		
		
		
		
		
		
		//==============================================================
//		ArrayList<Student> five = new ArrayList<>();
//		ArrayList<Student> fiveM = new ArrayList<>();
//		ArrayList<Student> fiveW = new ArrayList<>();
//		ArrayList<Student> six = new ArrayList<>();
//		ArrayList<Student> sixM = new ArrayList<>();
//		ArrayList<Student> sixW = new ArrayList<>();
//		ArrayList<Student> seven = new ArrayList<>();
//		ArrayList<Student> sevenM = new ArrayList<>();
//		ArrayList<Student> sevenW = new ArrayList<>();
//		
//		//나이별 / 성별 구분
//		for(Student s : stuList){
//			if(s.getAge() == 5){
//				five.add(s);
//				if(s.getGender().equals("M")){
//					fiveM.add(s);
//				}else{
//					fiveW.add(s);
//				}
//			}else if(s.getAge() == 6){
//				six.add(s);
//				if(s.getGender().equals("M")){
//					sixM.add(s);
//				}else{
//					sixW.add(s);
//				}
//			}else {
//				seven.add(s);
//				if(s.getGender().equals("M")){
//					sevenM.add(s);
//				}else{
//					sevenW.add(s);
//				}
//			}
//		}
//		
//		//classList 불러옴
//		ArrayList<ClassVO> classList = cdao.allClass();
//		ArrayList<ClassVO> class5 = new ArrayList<>();
//		ArrayList<ClassVO> class6 = new ArrayList<>();
//		ArrayList<ClassVO> class7 = new ArrayList<>();
//		//5/6/7 세 분할함.
//		for(ClassVO c : classList){
//			c.setBoy(0);
//			c.setGirl(0);
//			if(c.getAge() == 5){
//				class5.add(c);
//			}else if(c.getAge() == 6){
//				class6.add(c);
//			}else {
//				class7.add(c);
//			}
//		}
//		
//		// 싫어요 숫자가 해당 학년의 반 숫자 보다 많을 경우 블랙리스트에 추가함.
//		ArrayList<Student> blackList5M = new ArrayList<>();
//		ArrayList<Student> blackList6M = new ArrayList<>();
//		ArrayList<Student> blackList7M = new ArrayList<>();
//		
//		ArrayList<Student> blackList5W = new ArrayList<>();
//		ArrayList<Student> blackList6W = new ArrayList<>();
//		ArrayList<Student> blackList7W = new ArrayList<>();
//		
//		
//		//5세 시작★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
//		
//		//각 반에 남자 / 여자 인원 구함
//		int cnt5M = fiveM.size();	//5살 남자 수
//		int cnt5W = fiveW.size();	//5살 여자 수
//		int cnt5C = class5.size();	//5살 반 갯수
//		
//		int girlPerClass5 = cnt5W / cnt5C; 	//각반에 균등분배될 여학생 수
//		int girlPerClass5N = cnt5W % cnt5C; //나머지 값으로 반 갯수보다는 항상 적다. 차례대로 각반에 하나씩 부여해줘야한다.
//		int boyPerClass5 = cnt5M / cnt5C; 	//각반에 균등분배될 남학생 수
//		int boyPerClass5N = cnt5M % cnt5C; //나머지 값으로 반 갯수보다는 항상 적다. 차례대로 각반에 하나씩 부여해줘야한다.
//		
//		for(ClassVO c : class5){
//			c.setGirlCapa(girlPerClass5);	//각 반 여학생 균등분배함 
//			c.setBoyCapa(boyPerClass5);		//각 반 남학생 균등분배함 
//		}
//		for(int i = 0; i < girlPerClass5N; i++){ //나머지 학생을 각 반에 차례로 분배
//			class5.get(i).setGirlCapa(girlPerClass5+1); //순서대로 학생을 1명씩 추가해줌.
//		}
//		for(int i = boyPerClass5N-1; i == 0; i--){ //나머지 학생을 각 반에 차례로 분배 (역순)
//			class5.get(i).setBoyCapa(boyPerClass5+1); 	//역순으로 학생을 1명씩 추가해줌.
//		}
//		
//		//블랙리스트를 위해 count 계산
//		for(Student s : five){
//			if(s.getHateid() != null){	//hateid를 가지고 있다면
//				String hateId = s.getHateid();
//				
//				for(Student hate : five){
//					if(hate.getStdno().equals(hateId)){
//						hate.setCount(hate.getCount()+1);	//hateId를 찾아서 count를 +1 시켜준다.
//						break;
//					}
//				}
//			}
//		}
//		
//		//count가 반 갯수 이상인 학생은 블랙리스트에 추가
//		for(Student s : five){
//			if(s.getCount() >= cnt5C){
//				if(s.getGender().equals("M")){
//					blackList5M.add(s);
//				}else{
//					blackList5W.add(s);
//				}
//			}
//		}
//		
//		//=======================남자 반배정==============================
//		if(blackList5M.size() != 0){	
//			
//			//블랙리스트 반배정
//			for(Student s : blackList5M){
//				
//				//남학생이 가장 적은 반을 구함
//				int index = 0;							//반의 인덱스
//				int minBoy = class5.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//				int base = 0;							//학생수 비교를 위해 저장변수
//				
//				for(int i = 0; i < class5.size(); i++){	// 최소 남학생을 가진 반의 index를 구한다.
//					if(class5.get(i).getBoy() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//						index = i;
//						break;
//					}else{								//boy가 0인 반이 없다면~~
//						base = class5.get(i).getBoy();	//현재 클래스의 boy 수를 base에 저장함
//						if(minBoy > base){				//minboy가 현재 base보다 크면 
//							minBoy = base;				//minboy에 base값을 저장한다.
//							index = i;					//index값도 저장한다.
//						}
//					}
//				}
//				
//				//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//				String stdno = s.getStdno();
//				for(Student stu : stuList){
//					if(stu.getStdno().equals(stdno)){
//						stu.setClassno(class5.get(index).getClassNo()); 			//학생에게 반번호 배정
//						class5.get(index).setBoy(class5.get(index).getBoy()+1); //반에 남학생 수 +1 추가
//					}
//				}
//				
//			}
//		}
//			
//		//남학생 반배정
//		for(Student s : fiveM){
//			
//			//남학생이 가장 적은 반을 구함
//			int index = 0;							//반의 인덱스
//			int minBoy = class5.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//			int base = 0;							//학생수 비교를 위해 저장변수
//			
//			for(int i = 0; i < class5.size(); i++){	// 최소 남학생을 가진 반의 index를 구한다.
//				if(class5.get(i).getBoy() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//					index = i;
//					break;
//				}else{								//boy가 0인 반이 없다면~~
//					base = class5.get(i).getBoy();	//현재 클래스의 boy 수를 base에 저장함
//					if(minBoy > base){				//minboy가 현재 base보다 크면 
//						minBoy = base;				//minboy에 base값을 저장한다.
//						index = i;					//index값도 저장한다.
//					}
//				}
//			}
//			
//			//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//			String stdno = s.getStdno();
//			for(Student stu : stuList){
//				if(stu.getStdno().equals(stdno)){
//					stu.setClassno(class5.get(index).getClassNo()); 			//학생에게 반번호 배정
//					class5.get(index).setBoy(class5.get(index).getBoy()+1); //반에 남학생 수 +1 추가
//				}
//			}
//				
//		}
//		//=======================남자 반배정==============================
//			
//		
//		//=======================여자 반배정==============================
//		if(blackList5W.size() != 0){	
//			
//			//블랙리스트 반배정
//			for(Student s : blackList5W){
//				
//				//여학생이 가장 적은 반을 구함
//				int index = 0;							//반의 인덱스
//				int minGirl = class5.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//				int base = 0;							//학생수 비교를 위해 저장변수
//				
//				for(int i = 0; i < class5.size(); i++){	// 최소 여학생을 가진 반의 index를 구한다.
//					if(class5.get(i).getGirl() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//						index = i;
//						break;
//					}else{								//boy가 0인 반이 없다면~~
//						base = class5.get(i).getGirl();	//현재 클래스의 boy 수를 base에 저장함
//						if(minGirl > base){				//minboy가 현재 base보다 크면 
//							minGirl = base;				//minboy에 base값을 저장한다.
//							index = i;					//index값도 저장한다.
//						}
//					}
//				}
//				
//				//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//				String stdno = s.getStdno();
//				for(Student stu : stuList){
//					if(stu.getStdno().equals(stdno)){
//						stu.setClassno(class5.get(index).getClassNo()); 			//학생에게 반번호 배정
//						class5.get(index).setGirl(class5.get(index).getGirl()+1); //반에 여학생 수 +1 추가
//					}
//				}
//				
//			}
//		}
//			
//		//여학생 반배정
//		for(Student s : fiveW){
//			
//			//여학생이 가장 적은 반을 구함
//			int index = 0;							//반의 인덱스
//			int minGirl = class5.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//			int base = 0;							//학생수 비교를 위해 저장변수
//			
//			for(int i = 0; i < class5.size(); i++){	// 최소 여학생을 가진 반의 index를 구한다.
//				if(class5.get(i).getGirl() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//					index = i;
//					break;
//				}else{								//boy가 0인 반이 없다면~~
//					base = class5.get(i).getGirl();	//현재 클래스의 boy 수를 base에 저장함
//					if(minGirl > base){				//minboy가 현재 base보다 크면 
//						minGirl = base;				//minboy에 base값을 저장한다.
//						index = i;					//index값도 저장한다.
//					}
//				}
//			}
//			
//			//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//			String stdno = s.getStdno();
//			for(Student stu : stuList){
//				if(stu.getStdno().equals(stdno)){
//					stu.setClassno(class5.get(index).getClassNo()); 			//학생에게 반번호 배정
//					class5.get(index).setGirl(class5.get(index).getGirl()+1); //반에 여학생 수 +1 추가
//				}
//			}
//				
//		}
//		//=======================여자 반배정==============================
//			
//		
//		
//		
//		
//		
//		
//		
//		//6세 시작★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
//		//각 반에 남자 / 여자 인원 구함
//		int cnt6M = sixM.size();	//5살 남자 수
//		int cnt6W = sixW.size();	//5살 여자 수
//		int cnt6C = class6.size();	//5살 반 갯수
//		
//		int girlPerClass6 = cnt6W / cnt6C; 	//각반에 균등분배될 여학생 수
//		int girlPerClass6N = cnt6W % cnt6C; //나머지 값으로 반 갯수보다는 항상 적다. 차례대로 각반에 하나씩 부여해줘야한다.
//		int boyPerClass6 = cnt6M / cnt6C; 	//각반에 균등분배될 남학생 수
//		int boyPerClass6N = cnt6M % cnt6C; //나머지 값으로 반 갯수보다는 항상 적다. 차례대로 각반에 하나씩 부여해줘야한다.
//		
//		for(ClassVO c : class6){
//			c.setGirlCapa(girlPerClass6);	//각 반 여학생 균등분배함 
//			c.setBoyCapa(boyPerClass6);		//각 반 남학생 균등분배함 
//		}
//		for(int i = 0; i < girlPerClass6N; i++){ //나머지 학생을 각 반에 차례로 분배
//			class6.get(i).setGirlCapa(girlPerClass6+1); //순서대로 학생을 1명씩 추가해줌.
//		}
//		for(int i = boyPerClass6N-1; i == 0; i--){ //나머지 학생을 각 반에 차례로 분배 (역순)
//			class6.get(i).setBoyCapa(boyPerClass6+1); 	//역순으로 학생을 1명씩 추가해줌.
//		}
//		
//		//블랙리스트를 위해 count 계산
//		for(Student s : six){
//			if(s.getHateid() != null){	//hateid를 가지고 있다면
//				String hateId = s.getHateid();
//				
//				for(Student hate : six){
//					if(hate.getStdno().equals(hateId)){
//						hate.setCount(hate.getCount()+1);	//hateId를 찾아서 count를 +1 시켜준다.
//						break;
//					}
//				}
//			}
//		}
//		
//		//count가 반 갯수 이상인 학생은 블랙리스트에 추가
//		for(Student s : six){
//			if(s.getCount() >= cnt6C){
//				if(s.getGender().equals("M")){
//					blackList6M.add(s);
//				}else{
//					blackList6W.add(s);
//				}
//			}
//		}
//		
//		//=======================남자 반배정==============================
//		if(blackList6M.size() != 0){	
//			
//			//블랙리스트 반배정
//			for(Student s : blackList6M){
//				
//				//남학생이 가장 적은 반을 구함
//				int index = 0;							//반의 인덱스
//				int minBoy = class6.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//				int base = 0;							//학생수 비교를 위해 저장변수
//				
//				for(int i = 0; i < class6.size(); i++){	// 최소 남학생을 가진 반의 index를 구한다.
//					if(class6.get(i).getBoy() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//						index = i;
//						break;
//					}else{								//boy가 0인 반이 없다면~~
//						base = class5.get(i).getBoy();	//현재 클래스의 boy 수를 base에 저장함
//						if(minBoy > base){				//minboy가 현재 base보다 크면 
//							minBoy = base;				//minboy에 base값을 저장한다.
//							index = i;					//index값도 저장한다.
//						}
//					}
//				}
//				
//				//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//				String stdno = s.getStdno();
//				for(Student stu : stuList){
//					if(stu.getStdno().equals(stdno)){
//						stu.setClassno(class6.get(index).getClassNo()); 			//학생에게 반번호 배정
//						class6.get(index).setBoy(class6.get(index).getBoy()+1); //반에 남학생 수 +1 추가
//					}
//				}
//				
//			}
//		}
//			
//		//남학생 반배정
//		for(Student s : sixM){
//			
//			//남학생이 가장 적은 반을 구함
//			int index = 0;							//반의 인덱스
//			int minBoy = class6.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//			int base = 0;							//학생수 비교를 위해 저장변수
//			
//			for(int i = 0; i < class6.size(); i++){	// 최소 남학생을 가진 반의 index를 구한다.
//				if(class6.get(i).getBoy() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//					index = i;
//					break;
//				}else{								//boy가 0인 반이 없다면~~
//					base = class6.get(i).getBoy();	//현재 클래스의 boy 수를 base에 저장함
//					if(minBoy > base){				//minboy가 현재 base보다 크면 
//						minBoy = base;				//minboy에 base값을 저장한다.
//						index = i;					//index값도 저장한다.
//					}
//				}
//			}
//			
//			//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//			String stdno = s.getStdno();
//			for(Student stu : stuList){
//				if(stu.getStdno().equals(stdno)){
//					stu.setClassno(class6.get(index).getClassNo()); 			//학생에게 반번호 배정
//					class6.get(index).setBoy(class6.get(index).getBoy()+1); //반에 남학생 수 +1 추가
//				}
//			}
//				
//		}
//		//=======================남자 반배정==============================
//			
//		
//		//=======================여자 반배정==============================
//		if(blackList6W.size() != 0){	
//			
//			//블랙리스트 반배정
//			for(Student s : blackList6W){
//				
//				//여학생이 가장 적은 반을 구함
//				int index = 0;							//반의 인덱스
//				int minGirl = class6.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//				int base = 0;							//학생수 비교를 위해 저장변수
//				
//				for(int i = 0; i < class6.size(); i++){	// 최소 여학생을 가진 반의 index를 구한다.
//					if(class6.get(i).getGirl() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//						index = i;
//						break;
//					}else{								//boy가 0인 반이 없다면~~
//						base = class6.get(i).getGirl();	//현재 클래스의 boy 수를 base에 저장함
//						if(minGirl > base){				//minboy가 현재 base보다 크면 
//							minGirl = base;				//minboy에 base값을 저장한다.
//							index = i;					//index값도 저장한다.
//						}
//					}
//				}
//				
//				//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//				String stdno = s.getStdno();
//				for(Student stu : stuList){
//					if(stu.getStdno().equals(stdno)){
//						stu.setClassno(class6.get(index).getClassNo()); 			//학생에게 반번호 배정
//						class6.get(index).setGirl(class6.get(index).getGirl()+1); //반에 여학생 수 +1 추가
//					}
//				}
//				
//			}
//		}
//			
//		//여학생 반배정
//		for(Student s : sixW){
//			
//			//여학생이 가장 적은 반을 구함
//			int index = 0;							//반의 인덱스
//			int minGirl = class6.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//			int base = 0;							//학생수 비교를 위해 저장변수
//			
//			for(int i = 0; i < class6.size(); i++){	// 최소 여학생을 가진 반의 index를 구한다.
//				if(class6.get(i).getGirl() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//					index = i;
//					break;
//				}else{								//boy가 0인 반이 없다면~~
//					base = class6.get(i).getGirl();	//현재 클래스의 boy 수를 base에 저장함
//					if(minGirl > base){				//minboy가 현재 base보다 크면 
//						minGirl = base;				//minboy에 base값을 저장한다.
//						index = i;					//index값도 저장한다.
//					}
//				}
//			}
//			
//			//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//			String stdno = s.getStdno();
//			for(Student stu : stuList){
//				if(stu.getStdno().equals(stdno)){
//					stu.setClassno(class6.get(index).getClassNo()); 			//학생에게 반번호 배정
//					class6.get(index).setGirl(class6.get(index).getGirl()+1); //반에 여학생 수 +1 추가
//				}
//			}
//				
//		}
//		//=======================여자 반배정==============================		
//		
//		
//		
//		//7세 시작★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
//		//각 반에 남자 / 여자 인원 구함
//		int cnt7M = sevenM.size();	//5살 남자 수
//		int cnt7W = sevenW.size();	//5살 여자 수
//		int cnt7C = class7.size();	//5살 반 갯수
//		
//		int girlPerClass7 = cnt7W / cnt7C; 	//각반에 균등분배될 여학생 수
//		int girlPerClass7N = cnt7W % cnt7C; //나머지 값으로 반 갯수보다는 항상 적다. 차례대로 각반에 하나씩 부여해줘야한다.
//		int boyPerClass7 = cnt7M / cnt7C; 	//각반에 균등분배될 남학생 수
//		int boyPerClass7N = cnt7M % cnt7C; //나머지 값으로 반 갯수보다는 항상 적다. 차례대로 각반에 하나씩 부여해줘야한다.
//		
//		for(ClassVO c : class7){
//			c.setGirlCapa(girlPerClass7);	//각 반 여학생 균등분배함 
//			c.setBoyCapa(boyPerClass7);		//각 반 남학생 균등분배함 
//		}
//		for(int i = 0; i < girlPerClass7N; i++){ //나머지 학생을 각 반에 차례로 분배
//			class7.get(i).setGirlCapa(girlPerClass7+1); //순서대로 학생을 1명씩 추가해줌.
//		}
//		for(int i = boyPerClass7N-1; i == 0; i--){ //나머지 학생을 각 반에 차례로 분배 (역순)
//			class7.get(i).setBoyCapa(boyPerClass7+1); 	//역순으로 학생을 1명씩 추가해줌.
//		}
//		
//		//블랙리스트를 위해 count 계산
//		for(Student s : seven){
//			if(s.getHateid() != null){	//hateid를 가지고 있다면
//				String hateId = s.getHateid();
//				
//				for(Student hate : seven){
//					if(hate.getStdno().equals(hateId)){
//						hate.setCount(hate.getCount()+1);	//hateId를 찾아서 count를 +1 시켜준다.
//						break;
//					}
//				}
//			}
//		}
//		
//		//count가 반 갯수 이상인 학생은 블랙리스트에 추가
//		for(Student s : seven){
//			if(s.getCount() >= cnt7C){
//				if(s.getGender().equals("M")){
//					blackList7M.add(s);
//				}else{
//					blackList7W.add(s);
//				}
//			}
//		}
//		
//		//=======================남자 반배정==============================
//		if(blackList7M.size() != 0){	
//			
//			//블랙리스트 반배정
//			for(Student s : blackList7M){
//				
//				//남학생이 가장 적은 반을 구함
//				int index = 0;							//반의 인덱스
//				int minBoy = class7.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//				int base = 0;							//학생수 비교를 위해 저장변수
//				
//				for(int i = 0; i < class7.size(); i++){	// 최소 남학생을 가진 반의 index를 구한다.
//					if(class7.get(i).getBoy() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//						index = i;
//						break;
//					}else{								//boy가 0인 반이 없다면~~
//						base = class7.get(i).getBoy();	//현재 클래스의 boy 수를 base에 저장함
//						if(minBoy > base){				//minboy가 현재 base보다 크면 
//							minBoy = base;				//minboy에 base값을 저장한다.
//							index = i;					//index값도 저장한다.
//						}
//					}
//				}
//				
//				//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//				String stdno = s.getStdno();
//				for(Student stu : stuList){
//					if(stu.getStdno().equals(stdno)){
//						stu.setClassno(class7.get(index).getClassNo()); 			//학생에게 반번호 배정
//						class7.get(index).setBoy(class7.get(index).getBoy()+1); //반에 남학생 수 +1 추가
//					}
//				}
//				
//			}
//		}
//			
//		//남학생 반배정
//		for(Student s : sevenM){
//			
//			//남학생이 가장 적은 반을 구함
//			int index = 0;							//반의 인덱스
//			int minBoy = class7.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//			int base = 0;							//학생수 비교를 위해 저장변수
//			
//			for(int i = 0; i < class7.size(); i++){	// 최소 남학생을 가진 반의 index를 구한다.
//				if(class7.get(i).getBoy() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//					index = i;
//					break;
//				}else{								//boy가 0인 반이 없다면~~
//					base = class7.get(i).getBoy();	//현재 클래스의 boy 수를 base에 저장함
//					if(minBoy > base){				//minboy가 현재 base보다 크면 
//						minBoy = base;				//minboy에 base값을 저장한다.
//						index = i;					//index값도 저장한다.
//					}
//				}
//			}
//			
//			//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//			String stdno = s.getStdno();
//			for(Student stu : stuList){
//				if(stu.getStdno().equals(stdno)){
//					stu.setClassno(class7.get(index).getClassNo()); 			//학생에게 반번호 배정
//					class7.get(index).setBoy(class7.get(index).getBoy()+1); //반에 남학생 수 +1 추가
//				}
//			}
//				
//		}
//		//=======================남자 반배정==============================
//			
//		
//		//=======================여자 반배정==============================
//		if(blackList7W.size() != 0){	
//			
//			//블랙리스트 반배정
//			for(Student s : blackList7W){
//				
//				//여학생이 가장 적은 반을 구함
//				int index = 0;							//반의 인덱스
//				int minGirl = class7.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//				int base = 0;							//학생수 비교를 위해 저장변수
//				
//				for(int i = 0; i < class7.size(); i++){	// 최소 여학생을 가진 반의 index를 구한다.
//					if(class7.get(i).getGirl() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//						index = i;
//						break;
//					}else{								//boy가 0인 반이 없다면~~
//						base = class7.get(i).getGirl();	//현재 클래스의 boy 수를 base에 저장함
//						if(minGirl > base){				//minboy가 현재 base보다 크면 
//							minGirl = base;				//minboy에 base값을 저장한다.
//							index = i;					//index값도 저장한다.
//						}
//					}
//				}
//				
//				//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//				String stdno = s.getStdno();
//				for(Student stu : stuList){
//					if(stu.getStdno().equals(stdno)){
//						stu.setClassno(class7.get(index).getClassNo()); 			//학생에게 반번호 배정
//						class7.get(index).setGirl(class7.get(index).getGirl()+1); //반에 여학생 수 +1 추가
//					}
//				}
//				
//			}
//		}
//			
//		//여학생 반배정
//		for(Student s : sevenW){
//			
//			//여학생이 가장 적은 반을 구함
//			int index = 0;							//반의 인덱스
//			int minGirl = class7.get(0).getCapa();	//기본값으로 최대값을 저장한다.
//			int base = 0;							//학생수 비교를 위해 저장변수
//			
//			for(int i = 0; i < class7.size(); i++){	// 최소 여학생을 가진 반의 index를 구한다.
//				if(class7.get(i).getGirl() == 0){	//boy 수가 0이면 그것이 바로 인덱스다~ 끝냄
//					index = i;
//					break;
//				}else{								//boy가 0인 반이 없다면~~
//					base = class7.get(i).getGirl();	//현재 클래스의 boy 수를 base에 저장함
//					if(minGirl > base){				//minboy가 현재 base보다 크면 
//						minGirl = base;				//minboy에 base값을 저장한다.
//						index = i;					//index값도 저장한다.
//					}
//				}
//			}
//			
//			//stuList에 있는 학생에 반번호를 배정함.(최종적으로 db에 입력하는 것은 stuList임)
//			String stdno = s.getStdno();
//			for(Student stu : stuList){
//				if(stu.getStdno().equals(stdno)){
//					stu.setClassno(class7.get(index).getClassNo()); 			//학생에게 반번호 배정
//					class7.get(index).setGirl(class7.get(index).getGirl()+1); //반에 여학생 수 +1 추가
//				}
//			}
//				
//		}
		//=======================여자 반배정==============================
		

		
		return "redirect:autoSplit";
	}
}
