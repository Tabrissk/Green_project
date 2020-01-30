<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="DTO.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <title>게시글 작성 jsp</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");

String titleck = request.getParameter("titleck"); //제목

String qnasaying = request.getParameter("qnasaying"); //게시글 

String qnawriter = request.getParameter("qnawriter"); //작성자
//여기서 조건문을 통해서 조건이 맞으면 usebean이 실행되게 하는거보다는 처음부터 값이 적절하게 있어야 넘어가게 해서 여기서는 오류가 안나고 바로 실행되게 처리를 해야된다.

 //out.println(titleck+"입니다.");  out.println(qnasaying+"입니다.");  out.println(qnawriter+"입니다."); 잘 넘어옴
%>
   <jsp:useBean id="testob" class="DAO.DAOclass">   

		   <% testob.insertting(titleck,qnasaying,qnawriter); 
		 //testob.insertting(titleck,qnasaying,qnawriter); //처음에 왜 안됬는지는 미스테리,, 아마 톰켓 로딩인가..
		   %>
 </jsp:useBean> <%

 // out.println(titleck+"결과 입니다.");    out.println(qnasaying+"결과 입니다.");   out.println(qnawriter+"결과 입니다."); 
 response.sendRedirect("qnawritesuccess.jsp");
%>
</body>
</html>