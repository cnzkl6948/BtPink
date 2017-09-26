package xyz.btpink.www.util;

import java.util.ArrayList;

import javax.swing.JComboBox.KeySelectionManager;

import xyz.btpink.www.vo.AdminMaimPage;
import xyz.btpink.www.vo.Attendence;

public class AttendanceRate {

	public AdminMaimPage AttendanceRate(ArrayList<Attendence> list) {
		String data = "";
		String keys = "";
		String labels = "";
		for (Attendence a : list) {
			System.out.println(a);
			data += "{y:'" + a.getToday().substring(0, 10) + "'," + a.getName() + ":"
					+ ((1.00 - a.getAbsentAvg()) * 100) + "},";
		}
		data = data.substring(0, data.length() - 1);
		keys = "'" + list.get(0).getName() + "'";
		System.out.println();
		AdminMaimPage pageList = new AdminMaimPage(data, keys, keys);
		return pageList;
	}

	public AdminMaimPage AdminPage(ArrayList<Attendence> list) {
		String data = "";
		String keys = "";
		String labels = "";
		for (Attendence a : list) {
			data += "{y:'"+a.getToday().substring(0, 10)+"',"+a.getName().substring(1)+"},";
			
		}
		data = data.substring(0, data.length() - 1);
		String[] sList =list.get(0).getName().split(",");
		for (int i = 1; i < sList.length; i++) {
			keys += ",'"+sList[i].split(":")[0]+"'";
		}
		 keys=keys.substring(1);
		 System.out.println("keys 서브 스트링  : "+keys);
		AdminMaimPage pageList = new AdminMaimPage(data, keys, keys);

		return pageList;
	}
}
