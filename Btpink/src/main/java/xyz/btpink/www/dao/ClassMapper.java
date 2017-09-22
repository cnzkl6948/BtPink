package xyz.btpink.www.dao;

import java.util.ArrayList;

import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.ClassVO;

public interface ClassMapper {

	public ClassVO selectClass(String memNo);
	public ArrayList<ClassVO> allClass();
	public ClassVO duplicateNameCheck(ClassVO cla);
	public int selectNextClassNo();
	public int classInsert(ClassVO cla);
	public ArrayList<ClassVO> allClassList();
}
