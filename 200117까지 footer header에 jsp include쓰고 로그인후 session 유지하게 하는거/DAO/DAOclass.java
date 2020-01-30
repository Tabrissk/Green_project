package DAO;
import java.util.*;
import java.sql.*;
import DTO.*;

public class DAOclass {
	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String DB_URL = "jdbc:mysql://localhost/money?useUnicode=true&characterEncoding=utf8"; // 맨끝은 작업할 디비명

	private final String USER_NAME = "root";
	private final String PASSWORD = "sqlll"; // 비번
	Connection conn = null;
	Statement state = null;
	
	public DAOclass() { // 생성자로 처리!! public으로..
		try {
			Class.forName(JDBC_DRIVER); // mysql연결 <<- 반복연결을 할 필요는 없다, 전체를 통틀어 한번만해도 됨, 여러 메소드중 처음 한번만 부르면된다.
		} catch (Exception e) {
		}
	}
	
	void dbconnect() {
		try {
			conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD); // db연결, db안에 테이블을 뭐 쓸지를 모르니 이거는 매번..
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	void closedb() { // 닫겠습니다. 나중에 열린거 부터 닫음
		if (state != null) {
			try {
				state.close();
			} catch (Exception e) {
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
		}
	}
	
public ArrayList<DTOdata> addputting() {
	
		ArrayList<DTOdata> aryliststbean = new ArrayList<DTOdata>();
	
		 // DTOclass dtobean = new DTOclass(); // while반복문안에서 매번 객체를 생성해야지 여기에 두면 객체가 생성된 1개만에 마지막에 생성된건만 저장된
		dbconnect();
		try {
			

			state = conn.createStatement();
			
			String comd= "select * from qnabrddb;" ; //sql 명령어
			ResultSet aa= state.executeQuery(comd); 

			while(aa.next()) { //delete는 여러개가 지울수 있으니 yy ==1 로 조건을 만들면 정상 삭제,업데이트도 조건문에 안 걸리니
				DTOdata dtobean = new DTOdata(); //매번 객체를 생성해야지 
				dtobean.setNum(aa.getInt("num"));
				dtobean.setTitleck(aa.getString("titleck"));		
				dtobean.setQnasaying(aa.getString("qnasaying"));
				dtobean.setQnawriter(aa.getString("qnawriter"));
				dtobean.setQnadate(aa.getString("qnadate"));
				aryliststbean.add(dtobean);
			}
			aa.close();
			state.close();			
			
		}catch (Exception e) {			
		}finally {
			closedb();
		}
		return aryliststbean;
}

public ArrayList<DTOdata> boardclicking(int numinput) {
	
	ArrayList<DTOdata> aryliststbean = new ArrayList<DTOdata>();

	 // DTOclass dtobean = new DTOclass(); // while반복문안에서 매번 객체를 생성해야지 여기에 두면 객체가 생성된 1개만에 마지막에 생성된건만 저장된
	dbconnect();
	try {
		state = conn.createStatement();
		
		String comd= "select * from qnabrddb where num="+numinput+";" ; //sql 명령어
		ResultSet aa= state.executeQuery(comd); 

		while(aa.next()) { //delete는 여러개가 지울수 있으니 yy ==1 로 조건을 만들면 정상 삭제,업데이트도 조건문에 안 걸리니
			DTOdata dtobean = new DTOdata(); //매번 객체를 생성해야지 
			dtobean.setNum(aa.getInt("num"));
			dtobean.setTitleck(aa.getString("titleck"));		
			dtobean.setQnasaying(aa.getString("qnasaying"));
			dtobean.setQnawriter(aa.getString("qnawriter"));
			dtobean.setQnadate(aa.getString("qnadate"));
			aryliststbean.add(dtobean);
		}
		aa.close();
		state.close();			
		
	}catch (Exception e) {			
	}finally {
		closedb();
	}
	return aryliststbean;
}

	public void insertting(String titleck, String saying, String qnawriter) {

		try {
			dbconnect();
			state = conn.createStatement();
			DTOdata dtobean = new DTOdata();
			System.out.println(titleck + " 들어옴");
			System.out.println(saying + " 들어옴");
			System.out.println(qnawriter + " 들어옴");
			dtobean.setTitleck(titleck);
			dtobean.setQnasaying(saying);
			dtobean.setQnawriter(qnawriter);
			System.out.println(dtobean.getTitleck() + " 들어옴");
			System.out.println(dtobean.getQnasaying() + " 들어옴");
			System.out.println(dtobean.getQnawriter() + " 들어옴");

			String comd = "insert into qnabrddb(titleck,qnasaying,qnawriter,qnadate) values('" + dtobean.getTitleck()
					+ "','" + dtobean.getQnasaying() + "','" + dtobean.getQnawriter() + "',now());";

			int rowNum = state.executeUpdate(comd); // sql에서 Query ok, 1 row affected나 나오니 1값이 나와서 int로 return한다고 표시되는거다

			state.close();

		} catch (Exception e) {
		} finally {
			closedb();
		}
	}

	public void deletting(int numck) {

		try {
			dbconnect();
			state = conn.createStatement();

			String comd = "delete from qnabrddb where num=" +numck+ ";";

			int rowNum = state.executeUpdate(comd); // sql에서 Query ok, 1 row affected나 나오니 1값이 나와서 int로 return한다고 표시되는거다

			state.close();

		} catch (Exception e) {
		} finally {
			closedb();
		}
	}
	
	public void updatting(int numck,String titleck, String saying) {
		try {
			dbconnect();
			state = conn.createStatement();

			String comd = "update qnabrddb set titleck='"+titleck+"',qnasaying='"+saying+"' where num="+numck+";";
			
			System.out.println(titleck+" 들어옴"); System.out.println(saying+" 들어옴"); System.out.println(numck+" 들어옴");
			
			int rowNum = state.executeUpdate(comd); // sql에서 Query ok, 1 row affected나 나오니 1값이 나와서 int로 return한다고 표시되는거다
			if(rowNum>0) {
			System.out.println(titleck+" 실행후 들어옴"); System.out.println(saying+" 실행후 들어옴"); System.out.println(numck+" 실행후 들어옴");
			}
			state.close();

		} catch (Exception e) {
		} finally {
			
			closedb();
		}
	}
 
 public void testing() {

	System.out.println(" 테스트 중입니다.");
	
}



}
