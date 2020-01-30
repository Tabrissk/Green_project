<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 <% String idcheck = (String)session.getAttribute("idcheck"); 
    String loginresult= null;
    if(idcheck != null && !idcheck.isEmpty()){
    	loginresult= "고객님";     }
    else{loginresult= "idcheck"; }     %>
<!doctype html>
<html lang="en">  <head>  <title>로그인 db연습 </title> <head>   <meta charset="UTF-8"> 

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="../CSS/projcss.css">
   <script src="./js/modernizr.js"></script>
      <script src="../JavaScript/Member_javascript.js"></script>
 </head>
 <body>
<jsp:include page="../CSS/indexHeader.jsp"></jsp:include>
  <!--  -->
<section>
   <div> <img src="../projImg/backimg_member2login.jpg">  </div>
   
 <table cellpadding="3" cellspacing="1" align="center" style="width:1300px;  position:relative; left:50px;">
 <form name="memtable" ACTION="membertrylogin.jsp" METHOD=POST>

  <tr>
  <td class=namecolor>아이디 :</td> <td class=tdstyle><input type="text" size="25" maxlength="10" name="idlogtry"  placeholder="아이디를 입력하세요" > </td></tr>
  <!--style="width:300px;height:200px; 이것도 size 조절 가능 -->
   <tr>
 <td class=namecolor> 비밀번호 : </td> <td class=tdstyle> <input type="password" name="passwdlogtry" size="25" maxlength="10" placeholder="비밀번호를 입력하세요">  </td></tr>

 <tr>  <td colspan=2 align="center">  
 <button type="submit" class=jointestborder1> ** 로그인 **</button> <button type="reset" class=jointestborder2> ** 다시 입력**</button></td> </tr>
						
 </form>
</table>
</section>

  <!-- div Lbanner들을 footer에 붙여버리기   -->
  <!-- 밑이 너무 떠서 footer랑 안내문은 일단 삭제  -->
<jsp:include page="../CSS/indexFooter_absolute.jsp"></jsp:include>
   
 </body>
</html>