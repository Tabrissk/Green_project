<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
    <%@page import="DTO.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <title> 삭제하는거</title>
</head>
<body>
 <jsp:useBean id="testob" class="DAO.DAOclass"/> 
<% request.setCharacterEncoding("UTF-8");

int numlookfor = Integer.parseInt(request.getParameter("numlookfor2")); // 1개별 출력에서 수정누를때 NUM 행의 변수를 가져옴
String titleck = request.getParameter("titleck"); //제목
String qnasaying = request.getParameter("qnasaying"); //게시글 

testob.updatting(numlookfor,titleck,qnasaying); 
 //out.println(titleck+"결과 입니다.");    out.println(qnasaying+"결과 입니다.");   out.println(numlookfor+"결과 입니다."); //결과는 찍힘
  response.sendRedirect("qnaupdatesuccess.jsp");
%>
</body>
</html>