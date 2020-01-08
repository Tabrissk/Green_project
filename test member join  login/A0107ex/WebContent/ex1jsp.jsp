<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR"> <title>수업에서 첫 이클립스와 톰캣 jsp</title>
</head>
<body>
<p>
<%
String number = request.getParameter("ab");
String id = request.getParameter("cd");
String comment = request.getParameter("ef");

HashMap<String,String> map = new HashMap<String,String>();
map.put("number",number);
map.put("id",id);
map.put("comment",comment);
%>

글번호: <%= map.get("number") %>
<br>
아이디:<%= map.get("id") %>
<br>
내용:<%= map.get("comment") %>
<br>
<% out.print("결과 outprint 해보기"); %>
</p>
</body>
</html>