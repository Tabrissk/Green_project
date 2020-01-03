<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">  <head>  <title>로그아웃 db연습 </title> </head>
 <body>
 <h2>로그아웃 </h2>
 <%
  session.invalidate();
 %>
<a href="index.html"> 첫 페이지로 돌아가기 </a> <br>
<a href="memberlogin.html"> 로그인 페이지로 돌아가기 </a>
 </body>
</html>