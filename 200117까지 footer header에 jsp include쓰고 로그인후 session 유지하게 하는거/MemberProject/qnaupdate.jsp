<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@page import="DTO.*" %>
<!DOCTYPE html>
<html> 
<head> <meta charset="UTF-8"> <title> 수정하는거</title>
 <link rel="stylesheet" href="../CSS/CssBoard.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
function beforeupdate()  {
	var titlelen = qnaupdatetry.titleck.value.length ;
	var qnasayinglen = qnaupdatetry.qnasaying.value.length ;
	
	  if((titlelen < 2 )||(qnasayinglen < 2)) {
		  alert("제목이나 내용또는 작성자가 비어있습니다.")		 
}
 
else{
	qnaupdatetry.submit()
}
} 
</script>
</head>
<body>
 <jsp:include page="../CSS/indexHeader.jsp"></jsp:include>
  
 <jsp:useBean id="testob" class="DAO.DAOclass"/> 

   <table border="2" bordercolor="skyblue" style="width:80%; position:relative; left: 10%; top: 20px; border-collapse: collapse; ">
  <form name="qnaupdatetry" ACTION="qnaupdatesql.jsp" METHOD=POST>
<%
request.setCharacterEncoding("UTF-8");

  int numlookfor2 = Integer.parseInt(request.getParameter("numlookfor1"));  // 1개별 출력에서 수정누를때 NUM 행의 변수를 가져옴

ArrayList<DTOdata> takevalues = testob.boardclicking(numlookfor2);

	for(int i=0 ; i < takevalues.size(); i++){
		%> 
	<tr> <td align="center"> 번호</td>  <td>  <input type="text" name="numlookfor2" value="<%=takevalues.get(i).getNum()%>">  </td>
    </tr> 
 	<tr>  <td align="center"> 제목</td>  <td><input type="text" maxlength="30" name="titleck">   </td>
 	<!-- value="takevalues.get(i).getTitleck()" 은 값은 불러오는데 수정이 안된다. >>> DAO에 문제도 있고 textarea에 value이후의 빈칸도 주의해야된다--> 
    </tr> 
	<tr> <td align="center"> 내용</td>  
	<td>  <input type="text" maxlength="200" name="qnasaying" style="width:50%;height:200px;font-size:10px;">
	 <%-- 여기 안에 <%=takevalues.get(i).getQnasaying()%>을 넣으면 값을 불러오는데 밑에 빈칸들이 나옴 --%>
	 </textarea>   </td> </tr> 
 <tr> <td align="center"> 작성자</td>  <td align="center">	<%=takevalues.get(i).getQnawriter()%> </td> </tr> 
 	<tr> <td align="center"> 날짜</td>   <td align="center">	<%=takevalues.get(i).getQnadate()%> </td>   </tr>

 	<% } %> 
 	 	 <tr>  <td colspan=2 align="center">  
<input type="button" class=jointestborder1  onclick="beforeupdate()" value="** 수정 **">
 <button type="reset" class=jointestborder2> ** 다시 쓰기 **</button></td> </tr> 
 	 </form>
 	</table>
 	
<jsp:include page="../CSS/indexFooter_absolute.jsp"></jsp:include>
</body>
</html>