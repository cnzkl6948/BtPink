package xyz.btpink.www.vo;

import java.util.ArrayList;
import java.util.TreeMap;

public class IdentfyVO {

	private String faceId;
	private double confidence;
	private String personId;
	private String emotion;

	public IdentfyVO() {
	}

	public IdentfyVO(String personId, String emotion) {
		super();
		this.personId = personId;
		this.emotion = emotion;

	}

	public IdentfyVO(String faceId, double confidence) {
		super();
		this.faceId = faceId;
		this.confidence = confidence;
	}

	public String getPersonId() {
		return personId;
	}

	public void setPersonId(String personId) {
		this.personId = personId;
	}

	public String getEmotion() {
		return emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}

	public String getFaceId() {
		return faceId;
	}

	public void setFaceId(String faceId) {
		this.faceId = faceId;
	}

	public double getConfidence() {
		return confidence;
	}

	public void setConfidence(double confidence) {
		this.confidence = confidence;
	}

	@Override
	public String toString() {
		return "Identfy [faceId=" + faceId + ", confidence=" + confidence + ", personId=" + personId + ", emotion="
				+ emotion + "]";
	}


}
