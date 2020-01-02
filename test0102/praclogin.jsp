<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">  <head>  <title> 로그인 과정 </title> </head>
 <body>
 <h2> 데이터베이스 로그인 과정 </h2>
<%
String m1stvj = request.getParameter("m1stvj");
String m2ndvj = request.getParameter("m2ndvj");

Connection conn= null;
Statement stmt = null;

boolean logtext= true;
 try {
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/money","root","sqlll");


if(conn == null)
	throw new Exception("데이터베이스에 연결할수 없습니다. <br>");
stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from prac1227 where m1stvj = '"+ m1stvj+"' AND m2ndvj = '"+m2ndvj+"' ;");

if(rs.next()){
  String m3rdvj = rs.getString("m3rdvj");

request.setAttribute("m1stvj",m1stvj);
request.setAttribute("m2ndvj",m2ndvj);
request.setAttribute("m3rdvj",m3rdvj);
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
RequestDispatcher dispatcher = request.getRequestDispatcher("pracloginresultview.jsp?");
dispatcher.forward(request,response);
}
else if (logtext==false){
RequestDispatcher dispatcher = request.getRequestDispatcher("praclogfail.jsp?");
dispatcher.forward(request,response);
}


%>
 </body>
</html>