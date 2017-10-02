package xyz.btpink.www.FaceAPI;

import java.net.URI;
import java.util.ArrayList;
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

public class Identfy {
	private String faceId;
	private String personId;
	private double confidence;
	private xyz.btpink.www.vo.IdentfyVO identfy;
	

	public TreeMap<String, xyz.btpink.www.vo.IdentfyVO> identfy(ArrayList<String> array) {
		HttpClient httpClient = new DefaultHttpClient();
		TreeMap<String, xyz.btpink.www.vo.IdentfyVO> map = new TreeMap<>();
		try {
			String personGroupId = "example-group-00";

			URIBuilder builder = new URIBuilder("https://westcentralus.api.cognitive.microsoft.com/face/v1.0/identify");

			URI uri = builder.build();
			HttpPost request = new HttpPost(uri);

			request.setHeader("Content-Type", "application/json");
			request.setHeader("Ocp-Apim-Subscription-Key", "6bfd85c06c0b42b8bc879751a17f71bf");
			String[] test = new String[1];
			String body = "{ \"personGroupId\":\"example-group-00\",\"faceIds\":" + array + "}";

			StringEntity reqEntity = new StringEntity(body, "utf8");
			request.setEntity(reqEntity);
			HttpResponse response = httpClient.execute(request);
			HttpEntity entity = response.getEntity();
			if (entity != null) {
				String jsonString = EntityUtils.toString(entity);
				if (jsonString.charAt(0) == '[') {
					JSONArray jsonArray = new JSONArray(jsonString);
					System.out.println("JsonArray 크기 >>" + jsonArray.length());
					System.out.println(jsonArray.toString());
					for (int i = 0; i < jsonArray.length(); i++) {
						try{
						System.out.println(i + "번쨰identfy : " + jsonArray.getJSONObject(i).getJSONArray("candidates")
								.getJSONObject(0).get("confidence"));
						//faceid 와 현재 저장된 사람이미지와 일치도
						confidence = (double) jsonArray.getJSONObject(i).getJSONArray("candidates").getJSONObject(0)
								.get("confidence");
						
						faceId = (String) jsonArray.getJSONObject(i).get("faceId");
						//결과값의 persoinId 저장 없을시 애러와함께 다시 포문으로 돌아감
						personId = (String) jsonArray.getJSONObject(i).getJSONArray("candidates").getJSONObject(0)
								.get("personId");
						
						identfy = new xyz.btpink.www.vo.IdentfyVO(faceId, confidence);

						if (map.size() == 0) {
							//초기값 저장
							map.put(personId, identfy);
							System.out.println(map.get(personId));
						}
						for (int j = 0; j < map.size(); j++) {
							//같은 펄슨아이디가 있을시 진입
							if (map.containsKey(personId)) {
								// 더 높은 것을 저장
								if (map.get(personId).getConfidence() < confidence) {
									map.put(personId, identfy);
								}
							} else if (confidence > 0.5) {
								//없을시 0.7이상 저장
								map.put(personId, identfy);
							}
						}
						}catch(Exception e){
							
						}
					}
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("큰오류");
		}
		return map;
	}
}