package xyz.btpink.www;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import xyz.btpink.www.dao.BoardDAO;
import xyz.btpink.www.util.PageNavigator;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Board;
import xyz.btpink.www.vo.Reply;

/**
 * 게시판 콘트롤러 글쓰기, 읽기, 목록, 삭제, 수정
 */
@Controller
// @RequestMapping("board")
public class BoardController {
	// private final String path =
	// "/BtPink/Btpink/src/main/webapp/resources/NoticeImage";

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	private final String path = "/BtPink/Btpink/src/main/webapp/resources/NoticeImage/";
	@Autowired
	BoardDAO dao; // 회원 관련 데이터 처리 객체

	// 게시판 관련 상수값들
	final int countPerPage = 8; // 페이지 당 글 수
	final int pagePerGroup = 5; // 페이지 이동 그룹 당 표시할 페이지 수
	// final String uploadPath = "/boardfile"; //파일 업로드 경로

	/**
	 * 글쓰기 폼 보기
	 */
	@RequestMapping (value="/writeNotice", method=RequestMethod.GET)
	public String writeForm() {

		return "MainPage/writeNotice";
	}

	/**
	 * 글 저장 처리
	 * 
	 * @param board
	 *            사용자가 입력한 글 내용
	 */
	@RequestMapping(value = "/writeNotice", method = RequestMethod.POST)
	public String write(Board board, HttpSession session, MultipartFile file, String boardImageCheck) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String savedFilename = sdf.format(new Date());
		savedFilename = savedFilename + new Date().getTime();
		String filename = savedFilename;
		
		
		// 파일 저장
		File out = null;
		try {
			out = new File(path + filename + ".jpg");
			file.transferTo(out);
			Thread.sleep(3000);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 세션에서 로그인한 사용자의 아이디를 읽어서 Board객체의 작성자 정보에 세팅
//		imgUpdate(filename);
		Account user = (Account) session.getAttribute("User");
		System.out.println(user.getId());
		board.setId(user.getId());

		// 첨부파일없음
		System.out.println(boardImageCheck);
		if (boardImageCheck.equalsIgnoreCase("true")) {
			System.out.println(filename);
			board.setBoardImage(filename);
		} else {
			board.setBoardImage("");
		}
		dao.insertBoard(board);

		return "redirect:listNotice";
	}

	/**
	 * 글 목록
	 * 
	 * @param page
	 *            현재 페이지. 없으면 1로 처리
	 * @param searchText
	 *            검색어. 없으면 ""로 처리
	 */
	@RequestMapping (value="/listNotice", method=RequestMethod.GET)
	public String list(
			@RequestParam(value="page", defaultValue="1") int page,
			@RequestParam(value="searchText", defaultValue="") String searchText,
			Model model) {
		logger.debug("page: {}, searchText: {}", page, searchText);

		int total = dao.getTotal(searchText); // 전체 글 개수

		// 페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total);

		// 검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
		ArrayList<Board> boardlist = dao.listBoard(searchText, navi.getStartRecord(), navi.getCountPerPage());

		for (Board bo : boardlist) {
			System.out.println(bo);
		}
		// 페이지 정보 객체와 글 목록, 검색어를 모델에 저장
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("navi", navi);
		model.addAttribute("searchText", searchText);

		if (page == 1) {
			model.addAttribute("latestnum1", boardlist.get(0).getBoardnum());
			model.addAttribute("latestnum2", boardlist.get(1).getBoardnum());
			model.addAttribute("latestnum3", boardlist.get(2).getBoardnum());
		}

		return "MainPage/listNotice";
	}

	/**
	 * 글 읽기
	 * 
	 * @param boardnum
	 *            읽을 글번호
	 * @return 해당 글 정보
	 */
	@RequestMapping (value="/readNotice", method=RequestMethod.GET)
	public String read(int boardnum, Model model, HttpSession session) {
		// 전달된 글 번호로 해당 글정보 읽기
		System.out.println("readNotice");
		Board board = dao.get(boardnum);
		System.out.println(board);
		if (board == null) {
			return "redirect:listNotice";
		}

		// 해당 글에 달린 리플목록 읽기
		ArrayList<Reply> replylist = dao.listReply(boardnum);

		// 본문글정보와 리플목록을 모델에 저장
		model.addAttribute("board", board);
		model.addAttribute("replylist", replylist);
		model.addAttribute("replyCount", replylist.size());

		return "MainPage/readNotice";
	}

	/**
	 * 파일 다운로드
	 * 
	 * @param boardnum
	 *            파일이 첨부된 글 번호 안만들꺼임/
	 * 
	 * 
	 *            /** 글 삭제
	 * @param boardnum
	 *            삭제할 글번호
	 */
	@RequestMapping (value="/deleteNotice", method=RequestMethod.GET)
	public String delete(int boardnum, HttpSession session) {
		Account user = (Account) session.getAttribute("User");
		String id = user.getId();

		// 삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		Board board = new Board();
		board.setBoardnum(boardnum);
		board.setId(id);

		// 첨부된 파일같은거 없음

		// 글 삭제
		int result = dao.deleteBoard(board);

		// 글삭 확인해보자
		System.out.println(result);

		return "redirect:listNotice";
	}

	/**
	 * 글 수정 폼으로 이동
	 * 
	 * @param boardnum
	 *            수정할 글번호
	 * @return 해당 번호의 글 정보
	 */
	@RequestMapping (value="/editNotice", method=RequestMethod.GET)
	public String editForm(int boardnum, HttpSession session, Model model) {

		Board board = dao.get(boardnum);
				
		model.addAttribute("board", board);
		return "MainPage/editNotice";
	}

	/**
	 * 글 수정 처리
	 * 
	 * @param board
	 *            수정할 글 정보
	 */
	@RequestMapping (value="/editNotice", method=RequestMethod.POST)
	public String edit(Board board, HttpSession session, MultipartFile file, String boardImageCheck) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String savedFilename = sdf.format(new Date());
		savedFilename = savedFilename + new Date().getTime();
		String filename = savedFilename;
		
		// 파일 저장
		File out = null;
		try {
			out = new File(path + filename + ".jpg");
			file.transferTo(out);
			Thread.sleep(3000);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 첨부파일없음
		System.out.println(boardImageCheck);
		if (boardImageCheck.equalsIgnoreCase("true")) {
			System.out.println(filename);
			board.setBoardImage(filename);
		} else {
			board.setBoardImage("");
		}
		dao.updateBoard(board);

		return "redirect:readNotice?boardnum=" + board.getBoardnum();
	}

	/**
	 * 리플 저장 처리
	 * 
	 * @param reply
	 *            사용자가 입력한 글 내용
	 */
	@RequestMapping (value="/replyWrite", method=RequestMethod.POST)
	public String replyWrite(
			Reply reply, 
			HttpSession session, 
			Model model) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Reply객체의 작성자 정보에 세팅
		Account user=  (Account) session.getAttribute("User");
		String id =user.getId();
		reply.setId(id);
		// 리플 정보를 DB에 저장
		dao.insertReply(reply);

		// 읽던 게시글로 되돌아 감
		return "redirect:readNotice?boardnum=" + reply.getBoardnum();
	}

	/**
	 * 리플 삭제
	 * 
	 * @param reply
	 *            삭제할 리플 번호와 본문 글번호가 전달
	 */
	@RequestMapping (value="/replyDelete", method=RequestMethod.GET)
	public String deleteReply(Reply reply, HttpSession session) {
		Account user = (Account) session.getAttribute("User");
		String id = user.getId();

		// 삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		reply.setId(id);

		dao.deleteReply(reply);
		return "redirect:readNotice?boardnum=" + reply.getBoardnum();
	}

	/**
	 * 리플 수정 처리
	 * 
	 * @param reply
	 *            수정할 리플 정보
	 */
	@RequestMapping (value="/replyEdit", method=RequestMethod.POST)
	public String replyEdit(
			Reply reply, 
			HttpSession session) {
		
		//삭제할 리플 정보와 본인 글인지 확인할 로그인아이디
		Account user=  (Account) session.getAttribute("User");
		String id =user.getId();
		
		reply.setId(id);

		// 리플 수정 처리
		dao.updateReply(reply);
		// 원래의 글읽기 화면으로 이동
		return "redirect:readNotice?boardnum=" + reply.getBoardnum();
	}

	public String imgUpdate(String fileName) {
		try {
			Image originalImage = ImageIO.read(new File(path+fileName + ".jpg"));
			Image resizeImage = originalImage.getScaledInstance(270, 230, Image.SCALE_SMOOTH);
			BufferedImage newImage = new BufferedImage(270, 230, BufferedImage.TYPE_INT_RGB);
			Graphics g = newImage.getGraphics();
			g.drawImage(resizeImage, 0, 0, (ImageObserver) this);
			g.dispose();
			ImageIO.write(newImage, "jpg", new File(path + fileName + ".jpg"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return fileName;
	}
}
