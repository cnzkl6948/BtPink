package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.Aapply;
import xyz.btpink.www.vo.Account;
@Repository
public class AccountDAO implements AccountMapper {
	@Autowired
	SqlSession sqlSession;
	public int AccountInsert(Account account) {
		// TODO Auto-generated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		System.out.println("Dao : "+account);
		mapper.AccountInsert(account);
		return 0;
	}

	@Override
	public Account idOverlap(Account account) {
		// TODO Auto-geneidOverlaprated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.idOverlap(account);
	}

	@Override
	public Account login(Account account) {
		// TODO Auto-generated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.login(account);
	}

	@Override
	public ArrayList<Aapply> accountCheck() {
		// TODO Auto-generated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		
		return mapper.accountCheck();
	}

	public int signUpdate(Account account) {
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		mapper.signUpdate(account);
		return 0;
		// TODO Auto-generated method stub
		
	}
	
	public ArrayList<Account> duplicateTeacherCheck(Account aco) {
		// TODO Auto-generated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		ArrayList<Account> checkedTeacher = mapper.duplicateTeacherCheck(aco);
		return checkedTeacher;
	}
	
	public ArrayList<Account> allTeahcerName(String name){
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		ArrayList<Account> teaList = mapper.allTeahcerName(name);
		return teaList;
	}
}
