package xyz.btpink.www.FaceAPI;

//This sample uses the Apache HTTP client library(org.apache.httpcomponents:httpclient:4.2.4)
//and the org.json library (org.json:json:20170516).

import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import com.fasterxml.jackson.databind.ObjectMapper;


public class Detect {
	public final String subscriptionKey = "6bfd85c06c0b42b8bc879751a17f71bf";
	public final String uriBase = "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/detect";
	public String faceId[];
	public String faceResult;
	public int len;
	public TreeMap<String, Double> map;
	TreeMap<String, xyz.btpink.www.vo.IdentfyVO> identifyMap;
	public Map<String, xyz.btpink.www.vo.IdentfyVO> getFaceId(String image) {
		HttpClient httpclient = new DefaultHttpClient();
		try {
			xyz.btpink.www.vo.IdentfyVO identfy = new xyz.btpink.www.vo.IdentfyVO();
			HashMap<String, xyz.btpink.www.vo.IdentfyVO> detectMap = new HashMap<>();
			Identfy identy = new Identfy();
			URIBuilder builder = new URIBuilder(uriBase);

			// Request parameters. All of them are optional.
			builder.setParameter("returnFaceId", "true");
			builder.setParameter("returnFaceLandmarks", "false");
			builder.setParameter("returnFaceAttributes",
					"age,gender,headPose,smile,facialHair,glasses,emotion,hair,makeup,occlusion,accessories,blur,exposure,noise");

			// Prepare the URI for the REST API call.
			URI uri = builder.build();
			HttpPost request = new HttpPost(uri);

			// Request headers.
			request.setHeader("Content-Type", "application/json");
			request.setHeader("Ocp-Apim-Subscription-Key", subscriptionKey);
			// Request body.201708271503837703388.jpg
			// 마이크로 소프트로 이미지 주소 전달
			String url = "{\"url\":\"https://www.btpink.xyz/www/resources/face_detection/" + image + "\"}";
//			String url = "{\"url\":\"https://geonho.btpink.xyz/www/resources/face_detection/" + image + "\"}";
//			String url = "{\"url\":\"https://daheen.btpink.xyz/www/resources/face_detection/" + image + "\"}";
//			String url = "{\"url\":\"https://suenghan.btpink.xyz/www/resources/face_detection/" + image + "\"}";
			System.out.println(url);

			StringEntity reqEntity = new StringEntity(url);
			request.setEntity(reqEntity);

			HttpResponse response = httpclient.execute(request);
			HttpEntity entity = response.getEntity();

			if (entity != null) {
				// Format and display the JSON response.
				System.out.println("REST Response:\n");
				String jsonString = EntityUtils.toString(entity).trim();
				if (jsonString.charAt(0) == '[') {
					JSONArray jsonArray = new JSONArray(jsonString);
					System.out.println("json 길이 : "+jsonArray.length());
					len = jsonArray.length();
					ArrayList<String> list = new ArrayList<>();
					String[][] faceId = new String[len][2];
					
					//사람수만큼 for문으로 돌림
					for (int i = 0; i < len; i++) {
						//identfy 할 faeceid 저장 
						list.add("\"" + (String) jsonArray.getJSONObject(i).get("faceId") + "\"");
						//json 얼굴 데이터를 맵으로 넘김 
						map = new ObjectMapper().readValue(jsonArray.getJSONObject(0).getJSONObject("faceAttributes").getJSONObject("emotion").toString(), TreeMap.class);
						identfy.setFaceId((String) jsonArray.getJSONObject(i).get("faceId"));
						//크기별로 정렬 후 저장
						if(sortByValue(map) == null){
							identfy.setEmotion("neutral");
						}else{
							identfy.setEmotion(sortByValue(map));
						}
						//faceId와 identfy 이모션 저장
						detectMap.put(identfy.getFaceId(), identfy);
					}
					
					//faceId Identfy클래스로 보냄
					identifyMap = identy.identfy(list);
					for (String merge : identifyMap.keySet()) {
						if(detectMap.containsKey(identifyMap.get(merge).getFaceId())){
							identifyMap.put(merge, new xyz.btpink.www.vo.IdentfyVO(merge, detectMap.get(identifyMap.get(merge).getFaceId()).getEmotion()));
						}
					}
					System.out.println(identifyMap);
					
				} else if (jsonString.charAt(0) == '{') {
					JSONObject jsonObject = new JSONObject(jsonString);
					System.out.println(jsonObject.toString(2));
				} else {
					System.out.println(jsonString);
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.err.println("abs");
		}
		 return identifyMap;
	}
//이모션 정렬 메서드
	public String sortByValue(final Map<String, Double> map) {
		String temp = "";
		double d = 0.0;
		System.out.println(map);
			for ( String s : map.keySet()) {
				try{
				if(map.get(s)>d){
					d = map.get(s);
					temp = s;
				}
				}catch(Exception e){}
			}
			System.out.println(temp);
		return temp;
	}

}