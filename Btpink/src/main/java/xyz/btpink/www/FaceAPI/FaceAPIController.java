package xyz.btpink.www.FaceAPI;

import java.sql.Date;
import java.text.SimpleDateFormat;
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

	// 출석체크 알고리즘 실행
	@RequestMapping(value = "detectImage", method = RequestMethod.POST)
	public @ResponseBody Map<String, IdentfyVO> detectImage(String image, Model model) throws Exception {
		long time = System.currentTimeMillis();
		SimpleDateFormat dayTime = new SimpleDateFormat("kk:mm");
		String str = dayTime.format(new Date(time));
//		System.out.println(str);
		int hour = Integer.parseInt(str.split(":")[0]);
		int minite = Integer.parseInt(str.split(":")[1]);

		Base64ToImgDecoder base = new Base64ToImgDecoder();
		String fileName = base.decoder(image, "detect");
//		System.out.println(fileName);
		Thread.sleep(5000);
		Detect detect = new Detect();
//		System.out.println("Controller 초기");
		Map<String, IdentfyVO> identfy = detect.getFaceId(fileName);
//		System.out.println("ident null 인가요 ?" + identfy);
		if (identfy.size() == 0) {
			identfy = null;
//			System.out.println("사람없음으로 들어옴");
		} else {
			if (9 < hour || (hour == 9 && minite > 0)) {
				for (String result : identfy.keySet()) {
					if(identfy.get(result).getEmotion()==null || identfy.get(result).getEmotion().equals("")){
						identfy.get(result).setEmotion("neneutral");
					}
					attedenceDao.late(identfy.get(result));
				}
			} else {
				for (String result : identfy.keySet()) {
					if(identfy.get(result).getEmotion()==null || identfy.get(result).getEmotion().equals("")){
						identfy.get(result).setEmotion("neneutral");
					}
					attedenceDao.identfy(identfy.get(result));
				}
			}
		}
//		System.out.println("Controller 마지막");

		return identfy;
	}

}
