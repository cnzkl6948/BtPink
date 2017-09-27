package xyz.btpink.www.vo;

/**
 * 리플 정보 VO
 */
public class Reply {
	int replynum;				//리플번호
	int boardnum;				//본문 글번호
	String id;					//작성자 ID
	String text;				//리플내용
	String inputdate;			//작성날짜
	String name;			//유저이름
	
	public Reply() {
	}

	public Reply(int replynum, int boardnum, String id, String text, String inputdate, String name) {
		super();
		this.replynum = replynum;
		this.boardnum = boardnum;
		this.id = id;
		this.text = text;
		this.inputdate = inputdate;
		this.name = name;
	}

	public int getReplynum() {
		return replynum;
	}

	public void setReplynum(int replynum) {
		this.replynum = replynum;
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return "Reply [replynum=" + replynum + ", boardnum=" + boardnum + ", id=" + id + ", text=" + text
				+ ", inputdate=" + inputdate + ", name=" + name + "]";
	}
}
