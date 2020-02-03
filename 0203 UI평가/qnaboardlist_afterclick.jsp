<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="DTO.*" %>
<!DOCTYPE html>
<html>
<head> <meta charset="UTF-8"> <title> 클릭후 게시판 </title>
<link rel="stylesheet" href="./CSS/CssBoard.css">
<link rel="stylesheet" href="./CSS/bootstrap.min.css">
<script>
function qnadeletef() {
	if(confirm("삭제 하시겠습니까?")) {
	document.location = 'qnadeletesql.jsp?numlookfor1=<%=Integer.parseInt(request.getParameter("numlookfor"))%>' 
	}  }

function qnaupdatef() {
	if(confirm("수정 하시겠습니까?")) {
	document.location = 'qnaupdate.jsp?numlookfor1=<%=Integer.parseInt(request.getParameter("numlookfor"))%>' 
} }
</script>
</head>
<body>
  <%@ include file="./CSS/indexHeader.jsp"%>
 
   <jsp:useBean id="testob" class="DAO.DAOclass">
   <div style="position:relative; left: 500px; top: 90px; width:900px; margin-right:0px;"> 
   <table border="2" bordercolor="skyblue" border-collapse=collapse style="width:900px;">
       <%--  --%>
<%
  /* String numloookfor1 = request.getParameter("numlookfor"); 
  받는건 string이어도 int로 바꿔야하니 int numloookfor2 = Integer.parseInt(numloookfor1); 으로 하든가 밑으로 통일 */
  int numlookfor2 = Integer.parseInt(request.getParameter("numlookfor"));
//out.println("출력  확인  "+numloookfor1); // size가 6,5,4,3,2,1로 나오는거를 확인

ArrayList<DTOdata> takevalues = testob.boardclicking(numlookfor2);

	for(int i=0 ; i < takevalues.size(); i++){
		%> 
	<tr> <td align="center"> 번호</td>   <td align="center">	<%=takevalues.get(i).getNum()%> </td> <tr> 
 	<tr>  <td align="center"> 제목 </td>  <td align="center">	<%=takevalues.get(i).getTitleck()%> </td>  <tr> 
	<tr>  <td align="center"> 내용</td>  <td align="center">	<%=takevalues.get(i).getQnasaying()%> </td> </tr> 
 <tr> <td align="center"> 작성자 </td> <td align="center">	<%=takevalues.get(i).getQnawriter()%> </td> <tr> 
 	<tr>  <td align="center"> 작성날짜 </td> <td align="center">	<%=takevalues.get(i).getQnadate()%> </td>  </tr> 
 	<% } %> 
 	</table> </div>
	</jsp:useBean>
<%--style="text-align: center;" --%>>


			<div class="text-center" style="position:relative; top: 100px;">
			<input type="button"  value="qna 삭제하기" onClick="qnadeletef()" class="btn btn-primary"> 
  <!--   <a href="qnadeletesql.jsp?numlookfor1= <%-- <%=Integer.parseInt(request.getParameter("numlookfor"))%>"> --%> </a> qna 삭제하기 </li>  -->
			<input type="button"  value="qna 수정하기" onClick="qnaupdatef()" class="btn btn-primary"> 
		  <!-- 	 <a href="qnaupdate.jsp?numlookfor1= <%--<%=Integer.parseInt(request.getParameter("numlookfor"))%>"> --%> qna 수정하기 </a>   -->
	</div>
			    
 <%@ include file="./CSS/indexFooter_absolute.jsp"%>
 
</body>
</html>