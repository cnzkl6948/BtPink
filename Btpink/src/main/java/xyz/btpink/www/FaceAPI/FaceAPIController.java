package xyz.btpink.www.FaceAPI;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.btpink.www.Users.UsersController;
import xyz.btpink.www.dao.AttendenceDAO;
import xyz.btpink.www.util.Base64ToImgDecoder;
import xyz.btpink.www.vo.IdentfyVO;

@Controller

public class FaceAPIController {
	@Autowired
	AttendenceDAO attedenceDao;
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	//출석체크 알고리즘 실행
	@RequestMapping(value = "detectImage", method = RequestMethod.POST)
	public @ResponseBody Map<String, IdentfyVO> detectImage(String image, Model model) throws Exception {
		logger.info("Get faceId");
		Base64ToImgDecoder base = new Base64ToImgDecoder();
		String fileName = base.decoder(image, "detect");
		System.out.println(fileName);
		Thread.sleep(5000);
		Detect detect = new Detect();
		System.out.println("Controller 초기");
		Map<String, IdentfyVO> identfy = detect.getFaceId(fileName);
	for (String result : identfy.keySet()) {
		attedenceDao.identfy(identfy.get(result));
	}
		System.out.println("Controller 마지막");
		
		return identfy;
	}
	
}
