<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">  <head>  <title>db연습 </title> </head>
 <body>
 <h2> 데이터베이스 예시 </h2>
<%
String idlogtry = request.getParameter("idlogtry");
String passwdlogtry = request.getParameter("passwdlogtry");
String logincheck ="";
Connection conn= null;
Statement stmt = null;

boolean logtext= true;
 try {
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/money?useUnicode=true&characterEncoding=utf8","root","sqlll");


if(conn == null)
	throw new Exception("데이터베이스에 연결할수 없습니다. <br>");
stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from memberdb where idcheck = '"+ idlogtry+"' AND passwd = '"+passwdlogtry+"' ;");

if(rs.next()){
  String nameck = rs.getString("nameck");

//request.setAttribute("idcheck",idlogtry);
//request.setAttribute("passwd",passwdlogtry);
//request.setAttribute("nameck",nameck);
session.setAttribute("idcheck",idlogtry);
session.setAttribute("passwd",passwdlogtry);
session.setAttribute("nameck",nameck);
session.setAttribute("loginstatus","ok");
//request.setAttribute("logincheck","ok"); //이러니 getParameter 할때만 받고 session일때는 안받아서 session 값이 없이  
logincheck = "ok";
 }

 else{
 logtext= false;
 logincheck = "fail";
 }
if(logtext==true){
response.sendRedirect("index.jsp?logincheck="+logincheck);
}
else if (logtext==false){
response.sendRedirect("memberlogfail.jsp?");
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
}
}

%>
 </body>
</html>