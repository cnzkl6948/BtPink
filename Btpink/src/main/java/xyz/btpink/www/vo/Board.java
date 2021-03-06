package xyz.btpink.www.vo;

/**
 * 게시글 정보 VO
 */
public class Board {
	int boardnum; // 글번호
	String id; // 작성자 ID
	String title; // 글제목
	String content; // 글내용
	String inputdate; // 작성날짜,시간
	String boardImage;// 보드 이미지, null값 가능
	String name;
	
	
	public Board() {
	}

	public Board(int boardnum, String id, String title, String content, String inputdate, String boardImage) {
		super();
		this.boardnum = boardnum;
		this.id = id;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
		this.boardImage = boardImage;
	}
	
	

	public Board(int boardnum, String id, String title, String content, String inputdate, String boardImage,
			String name) {
		super();
		this.boardnum = boardnum;
		this.id = id;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
		this.boardImage = boardImage;
		this.name = name;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public String getBoardImage() {
		return boardImage;
	}

	public void setBoardImage(String boardImage) {
		this.boardImage = boardImage;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Board [boardnum=" + boardnum + ", id=" + id + ", title=" + title + ", content=" + content
				+ ", inputdate=" + inputdate + ", boardImage=" + boardImage + ", name=" + name + "]";
	}

	
}
