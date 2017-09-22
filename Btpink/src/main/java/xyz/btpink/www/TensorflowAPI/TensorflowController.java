package xyz.btpink.www.TensorflowAPI;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.btpink.www.dao.ClassDAO;
import xyz.btpink.www.util.Base64ToImgDecoder;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.CCTV;


@Controller
public class TensorflowController {
	@Autowired
	ClassDAO cdao;
	
	private static final Logger logger = LoggerFactory.getLogger(TensorflowController.class);
	//인원확인 알고리즘 실행
	@RequestMapping(value = "getCount", method = RequestMethod.POST)
	public @ResponseBody String getCount(String image, Model model,  HttpSession session) throws Exception {
		logger.info("Get getCount");
		Base64ToImgDecoder base = new Base64ToImgDecoder();
		String fileName = base.decoder(image, "count");
		System.out.println(fileName);
		PythonSocket ps = new PythonSocket();
		
		String count = ps.SocketTest(fileName);
		Account sensei = (Account) session.getAttribute("User");
		String classno = cdao.selectClass(sensei.getMemNo()).getClassNo();
		
		
		
		long time = System.currentTimeMillis(); 
		SimpleDateFormat dayTime = new SimpleDateFormat("yyyy/mm/dd hh:mm:ss");
		String str = dayTime.format(new Date(time));

		System.out.println(str);


		System.out.println(time);
		System.out.println(count);
		CCTV cctv = new CCTV(str, classno, count);
		
		
		Thread.sleep(10000);
		return count;
	}
}
