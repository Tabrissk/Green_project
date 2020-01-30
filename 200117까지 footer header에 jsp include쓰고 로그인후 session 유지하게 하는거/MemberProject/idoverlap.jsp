<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> <head> <meta charset="UTF-8"> <title>회원가입 Ajax테스트 jsp</title>
</head>
<body>
 <% request.setCharacterEncoding("UTF-8"); %>
<%

String idlogtry = request.getParameter("idcheck");

Connection conn= null;
Statement stmt = null;

 try {
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/money?useUnicode=true&characterEncoding=utf8","root","sqlll");

if(conn == null)
	throw new Exception("데이터베이스에 연결할수 없습니다. <br>");

stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery("select * from memberdb where idcheck = '"+ idlogtry+"' ;");

if(rs.next()){
	out.println("<script> alert('중복된 아이디가 있습니다');  history.back();  </script>");
}
else {
	out.println(" <script> alert('사용 가능한 아이디입니다.'); history.back();  </script>");
}
 }
finally {
	try {
	stmt.close();
}catch(Exception ignored){
}
try{
	conn.close();
} catch(Exception ignored){
} }
 %>
</body>
</html>