package xyz.btpink.www;


import java.util.ArrayList;
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

import xyz.btpink.www.dao.ParentDAO;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Board;
import xyz.btpink.www.vo.Demand;
import xyz.btpink.www.vo.Parent;



/**
 * 게시판 콘트롤러
 * 글쓰기, 읽기, 목록, 삭제, 수정
 */
@Controller
//@RequestMapping("parent")
public class ParentController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	ParentDAO dao;		//부모 관련 데이터 처리 객체
	
	//게시판 관련 상수값들
	final int countPerPage = 8;			//페이지 당 글 수
	final int pagePerGroup = 5;				//페이지 이동 그룹 당 표시할 페이지 수
	
	/**
	 * 글 저장 처리
	 * @param board 사용자가 입력한 글 내용
	 */
	@RequestMapping (value="writeDemand", method=RequestMethod.POST)
	public String write( HttpSession session,Demand demand, String parentId, String dateRange ) {
		
//		System.out.println(parentId);
		// parentId를 이용한다.
		//임시데이터 생성
		
		Account account =  (Account) session.getAttribute("User");
//		System.out.println("Demand : "+account);
		//예외처리 해야하나?? 
		Demand stdDemand = dao.getStdInfo(account);
//		System.out.println(stdDemand);
		demand.setStdno(stdDemand.getStdno());	
		demand.setClassno(stdDemand.getClassno());
				
		demand.setStartdate(dateRange.substring(0, 10));
		demand.setEnddate(dateRange.substring(13,23));
//		System.out.println(demand);
		int result = dao.insertDemand(demand);
		
		
//		System.out.println(result);
		return "redirect:/MySon";
	}
	
	
}
