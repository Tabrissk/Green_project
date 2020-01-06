<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">  <head>  <title>db연습 </title> </head>
 <body>
 <h2> 데이터베이스 예시 </h2>
<%
String idlogtry = request.getParameter("idlogtry");
String passwdlogtry = request.getParameter("passwdlogtry");

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

request.setAttribute("idcheck",idlogtry);
request.setAttribute("passwd",passwdlogtry);
request.setAttribute("nameck",nameck);
 }

 else{
 logtext= false;
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

if(logtext==true){
response.sendRedirect("index_afterlogin.html?");
}
else if (logtext==false){
response.sendRedirect("memberlogfail.html?");
}


%>
 </body>
</html>
