package xyz.btpink.www.admin;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;

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

import xyz.btpink.www.dao.AttendenceDAO;
import xyz.btpink.www.dao.StudentDAO;
import xyz.btpink.www.vo.Attendence;
import xyz.btpink.www.vo.Student;

@Controller
public class AdminController {
	
	@Autowired
	StudentDAO sdao;
	
	@Autowired
	AttendenceDAO adao;

	@Autowired
	private String path;
	
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
	
	//학생등록 처리	
	@RequestMapping(value = "Sapply", method = RequestMethod.POST)
	public String Sapply(Locale locale, Model model, Student student, MultipartFile file, RedirectAttributes rttr) {
		logger.info("Save Sapply");
		System.out.println("파일테스트 : "+file);
		String filename = file.getOriginalFilename();
		student.setImage(filename);
		
		try {
			File out = new File(path + File.separator + filename);
			file.transferTo(out);
		} catch (Exception e) {
			// TODO: handle exception
		}
		rttr.addAttribute("filename", filename);
		
		
		
		System.out.println(student);
		int result=sdao.insert(student);
		if(result==1){
			System.out.println("입력성공");
		}
		return "AdminPage/Sapply";
	}
		
	//출석부
	@RequestMapping(value = "Slist", method = RequestMethod.GET)
	public String Slist(Locale locale, Model model) {
		logger.info("Go! Slist");
		
		ArrayList<Attendence> result = adao.selectStd();
		System.out.println(result);
		model.addAttribute("list", result);
		
		return "AdminPage/Slist";
	}	
		

	//인원확인
	@RequestMapping(value = "PCheck", method = RequestMethod.GET)
	public String PCheck(Locale locale, Model model) {
		logger.info("Go! PCheck");
		return "AdminPage/PCheck";
	}
	
	//감정달력
	@RequestMapping(value = "emotionCal", method = RequestMethod.GET)
	public String emotionCal(Locale locale, Model model) {
		logger.info("Go! emotionCal");
		return "AdminPage/emotionCal";
	}
	//감정달력
	@RequestMapping(value = "getEmotionList", method = RequestMethod.POST)
	public String getEmotionList(String stdNo, Model model) {
		logger.info("Go! getEmotionList");
		ArrayList<Attendence> result = adao.getEmotionList(stdNo);
		int cnt = result.size();
		int count = 0;
		String emotion = "";
		for(Attendence a : result){
			count++;
			//DB에 저장되어 있던 감정
			String emo = a.getEmotion();
			//DB날짜를 년 월 일로 나눔
			int gYear = Integer.parseInt(a.getToday().split(" ")[0].split("-")[0]);
			int gMonth = Integer.parseInt(a.getToday().split(" ")[0].split("-")[1]);
			String gDay = a.getToday().split(" ")[0].split("-")[2];
			
			Calendar cal = Calendar.getInstance();
			//현재 년도, 월, 일
			int year = cal.get ( cal.YEAR );
			int month = cal.get ( cal.MONTH ) + 1 ;
			
			int eMonth = gMonth - month;
			int eYear = gYear - year;
			
			//감정 별 색상 지정
			String color = "";
			switch (emo) {
			case "anger":
				color+="#f56954"; //red
				break;
			case "fear":
				color+="#000000";	//yellow
				break;
			case "sadness":
				color+="#0073b7";	//blue
				break;
			case "surprise":
				color+="#00c0ef";	//aqua
				break;
			case "neutral":
				color+="#00a65a";	//green
				break;
			case "happiness":
				color+="#f39c12";	//yellow
				break;
			case "contempt":
				color+="#DF01A5";	//hotpink
				break;
			case "disgust":
				color+="#8A2908";	//brown
				break;
			default:
				color+="#FFFFFF";	//white
				break;
			}
			
			emotion += "{";
			emotion += "title          : '"+emo+"',";
			emotion += "start          : new Date(y+"+eYear+", "+"m+"+eMonth+", "+gDay+"),";
			emotion += "backgroundColor: '"+color+"',";
			emotion += "borderColor    : '"+color+"'";
			
			if(count == cnt){
				emotion += "}";
			}else{
				emotion += "},";
			}
			
		}
		System.out.println(emotion);
		model.addAttribute("emotionEvent", emotion);
		return "AdminPage/emotionCal";
	}
}
