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
			request.setHeader("Ocp-Apim-Subscription-Key", "d98e1b55a315483ea2658fbc75ef68b3");
			String[] test = new String[1];
			// String body = "{
			// \"personGroupId\":\"example-group-00\",\"faceIds\":[\"49ebdb2a-0c49-4d97-8153-dec8d546038c\",\"f74cb092-509e-47ef-9413-f3815c30c1c0\",\"6981d3b8-cde3-48b5-aa02-840e961afd91\"
			// ]}";
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
						confidence = (double) jsonArray.getJSONObject(i).getJSONArray("candidates").getJSONObject(0)
								.get("confidence");
						faceId = (String) jsonArray.getJSONObject(i).get("faceId");
						personId = (String) jsonArray.getJSONObject(i).getJSONArray("candidates").getJSONObject(0)
								.get("personId");
						identfy = new xyz.btpink.www.vo.IdentfyVO(faceId, confidence);

						if (map.size() == 0) {
							map.put(personId, identfy);
							System.out.println(map.get(personId));
						}
						for (int j = 0; j < map.size(); j++) {
							if (map.containsKey(personId)) {
								if (map.get(personId).getConfidence() < confidence) {
									map.put(personId, identfy);
								}
							} else if (confidence > 0.7) {

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