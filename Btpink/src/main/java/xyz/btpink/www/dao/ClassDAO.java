package xyz.btpink.www.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.ClassVO;
@Repository
public class ClassDAO implements ClassMapper {
	@Autowired
	SqlSession sqlSession;
	
	public ClassVO selectClass(String memno) {
		// TODO Auto-generated method stub
		ClassMapper mapper = sqlSession.getMapper(ClassMapper.class);
		ClassVO selClass = mapper.selectClass(memno);
		return selClass;
	}

	
}
