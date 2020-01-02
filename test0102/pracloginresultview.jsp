<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">  <head>  <title>로그인에 성공 </title> </head>
 <body>

<h3> 상품정보 </h3>
로그인에 성공하였습니다. 회원정보는 다음과 같습니다.
m1stvj : ${m1stvj}
m2ndvj : ${m2ndvj}
m3rdvj : ${m3rdvj}

<form action="praclogout.jsp" action=get>
<INPUT TYPE=SUBMIT VALUE="로그아웃">
</form>

 </body>
</html>