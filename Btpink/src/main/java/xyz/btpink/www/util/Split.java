package xyz.btpink.www.util;

import java.util.ArrayList;

import xyz.btpink.www.vo.ClassVO;
import xyz.btpink.www.vo.Student;

public class Split {
	public ArrayList<Student> ASplit(ArrayList<Student> stuList, ArrayList<ClassVO> classList){
		ArrayList<Student> result = new ArrayList<>();
		//학년별 각 반 남녀 인원 
		ArrayList<Integer> c5m = SplitClassN(5, "M", stuList, classList);
		ArrayList<Integer> c5w = SplitClassN(5, "W", stuList, classList);
		
		ArrayList<Integer> c6m = SplitClassN(6, "M", stuList, classList);
		ArrayList<Integer> c6w = SplitClassN(6, "W", stuList, classList);
		
		ArrayList<Integer> c7m = SplitClassN(7, "M", stuList, classList);
		ArrayList<Integer> c7w = SplitClassN(7, "W", stuList, classList);
		
		
		
		MakeBlackList(stuList, classList);
		for(int i=5; i<8; i++){
			result = SplitClass(i, stuList, classList);
		}
		
		return result;
	}
	
	//각 반에 들어가는 남녀 성별을 구한다.
	public ArrayList<Integer> SplitClassN(int num, String gender, ArrayList<Student> stuList, ArrayList<ClassVO> classList){
		ArrayList<Integer> result = new ArrayList<>();
		
		//입력받은 성별/학년 학생을 저장한다.
		ArrayList<Student> g = new ArrayList<>();	
		for(Student s : stuList){
			if(s.getGender().equals(gender) && s.getAge()==num){
				g.add(s);
			}
		}
		
		//입력받은 학년의 클래스를 저장한다.
		ArrayList<Integer> cAge = new ArrayList<>();
		for(ClassVO c : classList){
			if(c.getAge()==num){
				cAge.add(c.getCapa());
				break;
			}
		}
		int cNum = cAge.size();
		int gNum = g.size();
		
		
		
		
		return result;
	}
	//블랙리스트를 작성한다.
	public ArrayList<Student> MakeBlackList(ArrayList<Student> stuList, ArrayList<ClassVO> classList){
		ArrayList<Student> result = new ArrayList<>();
		
		
		
		return result;
	}
	//학년을 입력받고 반배정한다.
	public ArrayList<Student> SplitClass(int classNum, ArrayList<Student> stuList, ArrayList<ClassVO> classList){
		ArrayList<Student> result = new ArrayList<>();
		
		
		
		
		return result;
	}
	
}
