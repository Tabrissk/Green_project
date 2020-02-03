<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="DTO.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <title> Q&A 게시판 </title>
<link rel="stylesheet" href="./CSS/CssBoard.css">
<link rel="stylesheet" href="./CSS/bootstrap.min.css">
 <style>
text-align:center
	</style>
 <script> 
 function qnawrite() {
		if(confirm("게시글을 작성 하시겠습니까?")) {
		document.location = 'qnawrite.jsp' 
		}  }
 </script>
 </head>
 
</head>
<body>
<%@ include file="./CSS/indexHeader.jsp"%>
 
   <jsp:useBean id="testob" class="DAO.DAOclass">
   <div style="position:relative; left: 200px; top: 20px; width:70%; margin-right:0;" > 
   <table border="2" bordercolor="skyblue"  border-collaps="collapse" style="width:100%;">
  <%-- <colgroup>	<col style="width:2%" >	<col style="width:8%" >		<col style="width:60%">--%> 
      <tr>   <th style="text-align:center">No</th>  <th style="text-align:center">제목</th>   <th style="text-align:center">내용</th>   
      <th style="text-align:center">작성자 </th>  <th style="text-align:center;width:15%;">날짜 </th> 
          </tr>	
<%

ArrayList<DTOdata> takevalues = testob.addputting();
 int lastnum = takevalues.size();
	for(int i=lastnum ; i > 0; i--){
		//out.println("출력"+takevalues.get(1).getTitleck()); // size가 6,5,4,3,2,1로 나오는거를 확인
		//out.println("출력"+takevalues.get(1).getQnawriter()); //여기서 문제였음
		%> 

	<tr> 
 	 <%-- 숫자 클릭 --%>
<td align="center">	
 <!--   <a href="qnaboardlist_afterclick.jsp?numlookfor=값넣어보는걸로 확인후 여기에 들어간거를 고민후 검색">  -->
  <a href="qnaboardlist_afterclick.jsp?numlookfor=<%=takevalues.get(i-1).getNum()%>"> 
 <%=takevalues.get(i-1).getNum()%>  </a> </td>  
 <%-- 제목클릭 --%>
 <td align="center">
 <a href="qnaboardlist_afterclick.jsp?numlookfor=<%=takevalues.get(i-1).getNum()%>">
 	<% out.println(takevalues.get(i-1).getTitleck()); %>  </a> </td>  
 		 <%-- 내용 클릭 --%>
 <td align="center">	<% out.println(takevalues.get(i-1).getQnasaying()); %> </td> 
 	 <%-- 작성자 클릭 --%>
 <td align="center">	
 <% out.println(takevalues.get(i-1).getQnawriter()); %>  </td> 
  <%-- 날짜 클릭은 하지 않는걸로..  --%>
  <td align="center">	<% out.println(takevalues.get(i-1).getQnadate()); %> </td>   </tr> 
 <%-- qna리스트 수정 결과1 역순으로 성공-index는 0부터이고 arraylist의 size는 1부터라 사이즈가 6~1인데 arraylist의 index가 6이 없으면 에러가 난다 그래서 size에 -1을 한다  --%>
<% 
	}
	%>
	</table>
	</div>
	</jsp:useBean>
<%--style="text-align: center;" --%>>
<div class="text-center" style="position:relative; top: 100px;">
<input type="button"  value="qna 작성하기" onClick="qnawrite()" class="btn btn-primary"> 	</div>
			 
   <%@ include file="./CSS/indexFooter_absolute_px.jsp"%>
  
</body>
</html>