package xyz.btpink.www.dao;

import xyz.btpink.www.vo.Account;

public interface AccountMapper {

	public int AccountInsert(Account account);

	public Account idOverlap(Account account);

	public Account login(Account account);
}
