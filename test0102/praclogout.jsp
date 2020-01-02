<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">  <head>  <title>로그아웃 </title> </head>
 <body>
 <h2> 데이터베이스 로그아웃 </h2>
<%
 String m1stvj= (String) session.getAttribute("m1stvj");
 String m2ndvj= (String) session.getAttribute("m2ndvj");
 String m3rdvj= (String) session.getAttribute("m3rdvj");
 
session.invalidate();
%>
로그아웃 되었습니다.
 </body>
</html>