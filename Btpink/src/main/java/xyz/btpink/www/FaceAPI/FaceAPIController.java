package xyz.btpink.www.FaceAPI;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.btpink.www.Users.UsersController;

@Controller
public class FaceAPIController {

	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	//출석체크 알고리즘 실행
	@RequestMapping(value = "detectImage", method = RequestMethod.POST)
	public @ResponseBody String[] detectImage(String image, Model model) throws Exception {
		logger.info("Get faceId");
		Base64ToImgDecoder base = new Base64ToImgDecoder();
		String fileName = base.decoder(image, "detect");
		System.out.println(fileName);
		Thread.sleep(3000);
		Detect detect = new Detect();
		String faceId[] = detect.getFaceId(fileName);

		return faceId;
	}
	
}
