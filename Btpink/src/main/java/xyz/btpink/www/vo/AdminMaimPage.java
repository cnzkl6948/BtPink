package xyz.btpink.www.vo;

public class AdminMaimPage {
	private String data;
	private String keys;
	private String labels;

	public AdminMaimPage(){}
	public AdminMaimPage(String data, String keys, String labels) {
		super();
		this.data = data;
		this.keys = keys;
		this.labels = labels;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getKeys() {
		return keys;
	}

	public void setKeys(String keys) {
		this.keys = keys;
	}

	public String getLabels() {
		return labels;
	}

	public void setLabels(String labels) {
		this.labels = labels;
	}

	@Override
	public String toString() {
		return "adminMaimPage [data=" + data + ", keys=" + keys + ", labels=" + labels + "]";
	}

}
