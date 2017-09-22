package xyz.btpink.www.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.CCTV;

@Repository
public class CCTVDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insertCCTV(CCTV cctv) {
		CCTVMapper mapper = sqlSession.getMapper(CCTVMapper.class);
		int result = mapper.insertCCTV(cctv);
		return result;
	}
	
	public int Check(CCTV cctv) {
		CCTVMapper mapper = sqlSession.getMapper(CCTVMapper.class);
		int result = mapper.Check(cctv);
		return result;
	}
}
