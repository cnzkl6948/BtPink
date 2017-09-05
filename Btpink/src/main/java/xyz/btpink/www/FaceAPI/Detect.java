package xyz.btpink.www.FaceAPI;

//This sample uses the Apache HTTP client library(org.apache.httpcomponents:httpclient:4.2.4)
//and the org.json library (org.json:json:20170516).

import java.net.URI;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class Detect {
	public static final String subscriptionKey = "d98e1b55a315483ea2658fbc75ef68b3";
	public static final String uriBase = "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/detect";
	public static String faceId[];
	public static String[] faceTest;
	public static String faceResult;

	public String[] getFaceId(String image) {
		HttpClient httpclient = new DefaultHttpClient();
		System.out.println(image);
		try {
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
			String url = "{\"url\":\"https://www.btpink.xyz/www/resources/face_detection/" + image + "\"}";
//			String url = "{\"url\":\"https://gunho.btpink.xyz/www/resources/face_detection/" + image + "\"}";
//			String url = "{\"url\":\"https://daheen.btpink.xyz/www/resources/face_detection/" + image + "\"}";
//			String url = "{\"url\":\"https://suenghan.btpink.xyz/www/resources/face_detection/" + image + "\"}";
			System.out.println(url);

			StringEntity reqEntity = new StringEntity(url);
			request.setEntity(reqEntity);

			// Execute the REST API call and get the response entity.
			HttpResponse response = httpclient.execute(request);
			HttpEntity entity = response.getEntity();

			if (entity != null) {
				// Format and display the JSON response.
				System.out.println("REST Response:\n");

				String jsonString = EntityUtils.toString(entity).trim();
				if (jsonString.charAt(0) == '[') {
					JSONArray jsonArray = new JSONArray(jsonString);
//					String ftest = jsonArray.toString(2);
//					System.out.println(ftest);
					faceTest = jsonArray.toString(0).split("faceId\":\"");
					faceId = new String[faceTest.length - 1];
					faceResult = "";

					for (int i = 1; i < faceTest.length; i++) {
						System.out.println(i + "번째 배열" + faceTest[i].substring(0, 36));
						faceResult = faceTest[i].substring(0, 36);
						faceId[i - 1] = faceResult;
					}

					for (int i = 0; i < faceId.length; i++) {
						System.out.println("본 배열 " + i + "번쨰 :" + faceId[i]);
					}
				} else if (jsonString.charAt(0) == '{') {
					JSONObject jsonObject = new JSONObject(jsonString);
					System.out.println(jsonObject.toString(2));
				} else {
					System.out.println(jsonString);
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return faceId;
	}
}