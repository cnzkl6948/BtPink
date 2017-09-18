package xyz.btpink.www.TensorflowAPI;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.btpink.www.util.Base64ToImgDecoder;


@Controller
public class TensorflowController {
	
	private static final Logger logger = LoggerFactory.getLogger(TensorflowController.class);
	//인원확인 알고리즘 실행
	@RequestMapping(value = "getCount", method = RequestMethod.POST)
	public @ResponseBody String getCount(String image, Model model) throws Exception {
		logger.info("Get getCount");
		Base64ToImgDecoder base = new Base64ToImgDecoder();
		String fileName = base.decoder(image, "count");
		System.out.println(fileName);
		PythonSocket ps = new PythonSocket();
		String count = ps.SocketTest(fileName);
		
		Thread.sleep(10000);
		System.out.println(count);
		return count;
	}
}
