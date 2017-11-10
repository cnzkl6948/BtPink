package xyz.btpink.www.util;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.imageio.ImageIO;

import org.apache.tomcat.util.codec.binary.Base64;

import sun.misc.BASE64Decoder;

public class Base64ToImgDecoder {
	public String decoder(String base64, String sw) {

		String data = base64.split(",")[1];
		
		File path = null;
		String target = null;
		File files[] = null;
		// 경로에 폴더가 없으면 생성해라
		switch (sw) {
		case "count":
			target = "/BtPink/Btpink/src/main/webapp/resources/object_detection/image";
			path = new File(target);
			if (!path.isDirectory()) {
				path.mkdirs();
			}
			break;
		case "detect":
			target = "/BtPink/Btpink/src/main/webapp/resources/face_detection/";
			path = new File(target);
			if (!path.isDirectory()) {
				path.mkdirs();
			}
			break;
		case "addFace":
			target = "/BtPink/Btpink/src/main/webapp/resources/add_Face/";
			path = new File(target);
			if (!path.isDirectory()) {
				path.mkdirs();
			}
			break;
		}

		// 폴더 내부 파일 삭제
		files = new File(target).listFiles();
		for (int i = 0; i < files.length; i++) {
			files[i].delete();
		}

		// 파일 이름 생성
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String savedFilename = sdf.format(new Date());
		savedFilename = savedFilename + new Date().getTime();
		// String savedFilename = "image";

		// 전체경로를 포함한 File객체
		File serverFile = new File(target + "/" + savedFilename + ".jpg");

		BASE64Decoder decoder = new BASE64Decoder();
		try {
			byte[] imgBytesss = decoder.decodeBuffer(data);

			BufferedImage bufImg = ImageIO.read(new ByteArrayInputStream(imgBytesss));
			File imgOutFile = new File("newLabel.png");
			ImageIO.write(bufImg, "png", imgOutFile);
		} catch (Exception e) {
		}

		byte[] imgBytes = Base64.decodeBase64(data.getBytes());
		try {
			FileOutputStream osf = new FileOutputStream(serverFile);
			osf.write(imgBytes);
			osf.close();
			osf.flush();
		} catch (IOException e) {
			e.printStackTrace();
			return "false";
		}

		String result = savedFilename + ".jpg";
		System.out.println("파일저장완료");
		return result;

	}

}