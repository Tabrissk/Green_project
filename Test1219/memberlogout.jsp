﻿<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">  <head>  <title>로그아웃 db연습 </title> <head>   <meta charset="UTF-8"> 
        <title>1215~회원가입 2-표위에 그림 넣고 그냥 두기</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="projcss.css">
   <script src="./js/modernizr.js"></script>
      <script src="projcss-Member_javascript.js"></script>
 </head>
 <body>
  <header>
   <div style="position:absolute; top:5px; left:800px;"> <img src="./projImg/pfmain.jpg" height=90px;> </div> 
   <!--이미지를 center로 하는거는 가능한 비추천-강사님-->
    <div id=topnav>  <ul>
				<li> 로그인 </li>
				<li> 회원가입 </li>
				<li> 장바구니 목록</a></li>
				<li> 구매후기</a></li>
				<li> 질문응답</a></li>
			</ul>	</div>
  </header>
  <nav id="menunav">
  <ul id="menu"> 
  <li>전체 제품 목록</li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <li>브랜드 보기</li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <li>마이페이지</li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  </nav>
  <!--  -->
    <section>
	   <div style="position:absolute; top:370px; left:350px;">
 <h2>로그아웃 </h2>
 <%
  session.invalidate();
 %>
<a href="index.html"> 첫 페이지로 돌아가기 </a> <br>
<a href="memberlogin.html"> 로그인 페이지로 돌아가기 </a>

</div>
</section>

   <footer>
  <div style="position:absolute; bottom:70px; left:350px;" id="Lbanner1">고객센터 연락처 월요일 - 금요일 : 10:00 ~ 18:00<br>
"<"매장 영업시간">"<br>
평일 10:00 ~ 18:00 &nbsp; 주말 및 공휴일 휴무 &nbsp; 점심시간_ 12:00 ~ 13:00<br>
BANK<br>
기업 078-200428-01-013 &nbsp;&nbsp; 예금주 (주)**** </div>

   <div style="position:absolute; bottom:70px; left:974px;" id="Lbanner2">회사소개 사업자 등록번호
  COMPANY : 주식회사 **** CEO : 홍*** &nbsp; ALLIANCE : ******g@perfumegraphy.com &nbsp; WEB MASTER : 노** / k*****@perfumegraphy.com<br>
COMPANY REG.NO : [651-88-00183] &nbsp; NETWORK REG.NO : 제 2019-서울종로-0106호 사업자정보확인<br>
 &nbsp; ADDRESS : 서울특별시 종로구 창경궁로 ***(혜화동) 1층 (03076)
 </div>

   <div style="position:absolute; bottom:0px;" id="end">
<span style="float:right">
퍼퓸그라피 사전 서면 동의 없이 사이트의 일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</span><br><span style="float:right">
본 사업자는 KG 이니시스 서비스에 가입된 업체로서, 안전하게 거래를 하실 수 있습니다.</span> <span style="float:right">서비스 가입사실 확인</span><span style="float:right; clear:right">감사합니다.</span>
   </footer>
   
 </body>
</html>