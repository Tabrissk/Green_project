<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 새로만들어서 여기안에 style의 class로 게시판 1번째 열의 스타일 입력 후 Cssboard로 삭제후 실행했다가 다시 CSS만들고 그걸로 했음</title> 
 <link rel="stylesheet" href="../CSS/CssBoard.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
html, body {
    height: 100%;
    width: 100%;
}
</style>
   <script src="../JavaScript/jquery-3.4.1.js"></script>
<script>
function beforesubmitqna()  {
	var titlelen = qnawritetable.titleck.value.length ;
	var qnasayinglen = qnawritetable.qnasaying.value.length ;
	
	  if((titlelen < 2 )||(qnasayinglen < 2)) {
		  alert("제목이나 내용또는 작성자가 비어있습니다.")		 
}
	  /*  else if((titlelen < 6 )||(qnasayinglen < 10)) {
		  alert("제목을 5자이상 이나 내용 10자 이상 좀더 상세히  입력해주세요.")		 
}  성공은 하는데 테스트용이니 우선 뺀거임 */
 
else{
	 qnawritetable.submit()
}
} 
</script>
</head>
<body>
   
   <jsp:include page="../CSS/indexHeader.jsp"></jsp:include>
   
<table border="2" bordercolor="skyblue" style="width:70%; position:relative; left: 13%; top: 20px; border-collapse: collapse; ">
 <form name="qnawritetable" ACTION="qnawritesql.jsp" METHOD=POST>

<tr>
  <td class="col1style" style="width:10%;">제목 :</td> <td><input type="text" maxlength="30" name="titleck" style="width:100%;height:50px;" placeholder="제목을 5자 이상입력하세요" >
  </td></tr>
<tr>
  <td class="col1style" style="width:10%;">작성자 :</td> <td><input type="text" maxlength="10"  name="qnawriter" style="width:100%;height:30px;" placeholder="작성자를 입력하세요">
  </td></tr>
    
   <tr>
 <td class="col1style" style="width:10%;"> 작성하고 싶은 말: </td> <td>  <input type="text" maxlength="200" name="qnasaying" style="width:100%;height:200px;" placeholder="내용을 자세히 입력하세요">
   </td> </tr>

 <tr>  <td colspan=2 align="center">  
 <input type="button" class=jointestborder1 onclick="beforesubmitqna()" value="** 질문글 작성 **">
 <button type="reset" class=jointestborder2> ** 다시 쓰기 **</button></td> </tr>
 </form>
</table>


 <jsp:include page="../CSS/indexFooter_absolute.jsp"></jsp:include> 
</body>
</html>