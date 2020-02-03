<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="DTO.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <title> 삭제하는거</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");

int numlookfor = Integer.parseInt(request.getParameter("numlookfor1")); // 1개별 출력에서 수정누를때 NUM 행의 변수를 가져옴

%>
   <jsp:useBean id="testob" class="DAO.DAOclass">   

		   <% testob.deletting(numlookfor); 

		   %>
 </jsp:useBean> <%

 // out.println(titleck+"결과 입니다.");    out.println(qnasaying+"결과 입니다.");   out.println(qnawriter+"결과 입니다.");
 response.sendRedirect("qnadeletesuccess.jsp");
%>
</body>
</html>