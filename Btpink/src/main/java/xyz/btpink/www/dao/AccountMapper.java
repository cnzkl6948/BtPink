package xyz.btpink.www.dao;

import java.util.ArrayList;

import xyz.btpink.www.vo.Aapply;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.ClassVO;

public interface AccountMapper {

	public int AccountInsert(Account account);

	public Account idOverlap(Account account);

	public Account login(Account account);

	public ArrayList<Aapply> accountCheck();

	public int signUpdate(Account account);
	
	public ArrayList<Account> duplicateTeacherCheck(Account aco);
	
	public ArrayList<Account> allTeahcerName(String name);
	
}
