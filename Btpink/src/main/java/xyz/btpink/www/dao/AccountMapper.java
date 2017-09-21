package xyz.btpink.www.dao;

import java.util.ArrayList;

import xyz.btpink.www.vo.Aapply;
import xyz.btpink.www.vo.Account;

public interface AccountMapper {

	public int AccountInsert(Account account);

	public Account idOverlap(Account account);

	public Account login(Account account);

	public ArrayList<Aapply> accountCheck();

	public int signUpdate(Account account);
}
