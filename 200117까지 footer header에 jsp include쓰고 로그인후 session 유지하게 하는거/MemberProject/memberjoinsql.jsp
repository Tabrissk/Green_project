<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">
 <head>  <meta charset="UTF-8">  <title>삽입</title>
 </head>
 <body>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String nameck = request.getParameter("nameck");

String nationalch = request.getParameter("nationalch");
if(nationalch.equalsIgnoreCase("Citizen")){
nationalch="Citizen";
}else if(nationalch.equalsIgnoreCase("Foreigner")){
nationalch="Foreigner";
} 
else{
nationalch="error";
}

String selectsex = request.getParameter("selectsex");
if(selectsex.equalsIgnoreCase("man")){
selectsex="man";
} else{
selectsex="woman";
}

String idcheck = request.getParameter("idcheck");

String passwd = request.getParameter("passwd");

String bdyear = request.getParameter("bdyear");

String bdmonth = request.getParameter("bdmonth");

String bdday = request.getParameter("bdday");

String telphone1 = request.getParameter("telphone1");

String telphone2 = request.getParameter("telphone2");


String telphone3 = request.getParameter("telphone3");


String celphone1 = request.getParameter("celphone1");  /*KT, SKT ,LGU ,others*/

String celphone2 = request.getParameter("celphone2");

String celphone3 = request.getParameter("celphone3");


String celphone4 = request.getParameter("celphone4");


String joinreason1 = request.getParameter("joinreason1"); //searching
 if(joinreason1==null){
joinreason1="none";
}


String joinreason2 = request.getParameter("joinreason2"); //suggestion 
 if(joinreason2==null){
joinreason2="none";
}


String joinreason3 = request.getParameter("joinreason3"); //advertise
 if(joinreason3==null){
joinreason3="none";
}


String emailinput1 = request.getParameter("emailinput1");


String emailinput2 = request.getParameter("emailinput2");

String addres1 = request.getParameter("addres1");

String addres2 = request.getParameter("addres2");

String addres3 = request.getParameter("addres3");

String addres4 = request.getParameter("addres4");

String extresaying = request.getParameter("extresaying");

Connection conn= null;
Statement stmt = null;

if ((nameck != "")&&(idcheck != "")&&(passwd != "")&&(celphone3 != "")&&(celphone4 != "")&&(telphone2 != "")
	&&(telphone3 != "")&&(emailinput1 != "")&&(addres1 != "")&&(addres3 != "")) {
 try {
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/money?useUnicode=true&characterEncoding=utf8","root","sqlll");

if(conn == null)
	throw new Exception("데이터베이스에 연결할수 없습니다. <br>");
stmt = conn.createStatement();
String command = String.format("insert into memberdb values('%s', '%s', '%s','%s', '%s', '%s','%s', '%s', '%s','%s','%s', '%s','%s', '%s', '%s','%s', '%s', '%s','%s', '%s','%s','%s', '%s', '%s','%s');",nameck,nationalch,selectsex,idcheck,passwd,bdyear,bdmonth,bdday,telphone1,telphone2,telphone3,celphone1,celphone2,celphone3,celphone4,joinreason1,joinreason2,joinreason3,emailinput1,emailinput2,addres1,addres2,addres3,addres4,extresaying);

int rowNum = stmt.executeUpdate(command);
if(rowNum <1){
throw new Exception("데이터를 DB에 입력할수 없습니다.");}
else{
response.sendRedirect("memberinsertsuccess.jsp");}
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

}
else {
%>

<script>
alert("비어있는 데이터를 확인하세요.");
history.back();
 </script>
<% }
%>
</body>
</html>