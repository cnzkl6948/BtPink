package xyz.btpink.www.dao;

import xyz.btpink.www.vo.CCTV;

public interface CCTVMapper {
	public int insertCCTV(CCTV cctv);

	public CCTV Check(CCTV cctv);
}
