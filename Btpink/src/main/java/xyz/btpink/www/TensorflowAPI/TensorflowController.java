package xyz.btpink.www.TensorflowAPI;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.btpink.www.dao.CCTVDAO;
import xyz.btpink.www.dao.ClassDAO;
import xyz.btpink.www.util.Base64ToImgDecoder;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.CCTV;


@Controller
public class TensorflowController {
	@Autowired
	ClassDAO cdao;
	@Autowired
	CCTVDAO ccdao;
	
	private static final Logger logger = LoggerFactory.getLogger(TensorflowController.class);
	//인원확인 알고리즘 실행
	@RequestMapping(value = "getCount", method = RequestMethod.POST)
	public @ResponseBody int getCount(String image, Model model,  HttpSession session) throws Exception {
		logger.info("Get getCount");
		Base64ToImgDecoder base = new Base64ToImgDecoder();
		String fileName = base.decoder(image, "count");
		System.out.println(fileName);
		PythonSocket ps = new PythonSocket();
		
		int count = Integer.parseInt(ps.SocketTest(fileName));
		Account sensei = (Account) session.getAttribute("User");
		String classno = cdao.selectClass(sensei.getMemNo()).getClassNo();
		
		
		long time = System.currentTimeMillis(); 
		SimpleDateFormat dayTime = new SimpleDateFormat("yyyy/MM/dd hh:mm");
		String str = dayTime.format(new Date(time));

		
		CCTV cctv = new CCTV(str, classno, count); 
		CCTV cdb = ccdao.Check(cctv);
		
		
		// 변화가 생기면 메일 전송
		if(cdb.getCount() != cctv.getCount()){
			System.out.println("이메일 전송");
			// 네이버일 경우 smtp.naver.com 을 입력합니다. 
			// Google일 경우 smtp.gmail.com 을 입력합니다. 
			String host = "smtp.naver.com"; 
			
			
			final String username = "lolly87";  //네이버 아이디를 입력해주세요. @nave.com은 입력하지 마시구요. 
			final String password = "Seojuhee)!#)";  //네이버 이메일 비밀번호를 입력해주세요. 
			int port=465; //포트번호 
			
			// 메일 내용 
			String recipient = sensei.getEmail();  //받는 사람의 메일주소를 입력해주세요. 
			String subject = sensei.getName() + "반 인원을 확인하세요."; //메일 제목 입력해주세요. 
			String body = "인원 변동이 있습니다. <br> 현재인원 : "+count+"명 입니다."; //메일 내용 입력해주세요. 
			Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 
			
			// SMTP 서버 정보 설정 
			props.put("mail.smtp.host", host); 
			props.put("mail.smtp.port", port); 
			props.put("mail.smtp.auth", "true"); 
			props.put("mail.smtp.ssl.enable", "true"); 
			props.put("mail.smtp.ssl.trust", host); 
			
			//Session 생성 
			Session sessionMail = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
				String un=username; 
				String pw=password; 
				protected javax.mail.PasswordAuthentication getPasswordAuthentication() { 
					return new javax.mail.PasswordAuthentication(un, pw); 
				} 
			}); 
			sessionMail.setDebug(true); //for debug 
			
			Message mimeMessage = new MimeMessage(sessionMail); 
			
			//MimeMessage 생성 
//			mimeMessage.setFrom(new InternetAddress("lolly87@naver.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요. 
			mimeMessage.setFrom(new InternetAddress("cnzkl6948@naver.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요. 
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); //수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음 
			mimeMessage.setSubject(subject); //제목셋팅 
			mimeMessage.setText(body); //내용셋팅 
			Transport.send(mimeMessage); //javax.mail.Transport.send() 이용
			System.out.println("이메일 전송 완료");

		}
		
		
		ccdao.insertCCTV(cctv);//cctv 현 상황 저장
		
		
		Thread.sleep(10000);
		return count;
	}
}
