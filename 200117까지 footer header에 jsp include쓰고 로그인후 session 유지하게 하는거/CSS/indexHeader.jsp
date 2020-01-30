<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
     <% String loginstatus = (String)session.getAttribute("loginstatus"); 
    String logincheck= "" ; //= "" 이거는 빼도됨
    
     String idcheck = (String)session.getAttribute("idcheck");
     String nameck = (String)session.getAttribute("nameck");
 	if((loginstatus!=null)){ //맨처음 로그인 안한경우에 대비해서 조건문으로
// 그냥 logincheck= (String)request.getParameter("logincheck"); 선언이랑 , logincheck2==null(자체가 가끔 오류), logincheck.equals("") , logincheck.equals("fail") 이런 조건까지 다 쓰는게 다른 화면 넘어가면 오류남
 		logincheck="ok";  		}       
 		%>
<header>  	
<%-- session.loginstatus 확인 <%=loginstatus%> ,, String logincheck 확인 <%=logincheck%> || <a href="memberlogout.jsp"> 세선지우기</a> --%>
   <div style="position:absolute; top:5px; left:800px;"><a href="index.jsp"> <img src="./projImg/pfmain.jpg" height=90px;></a>   </div> 
  <div id=topnav> 	<% if(logincheck.equals("ok")){ %>
  		<ul> 
				<li style="color:blue;"><%=nameck %>님 안녕하세요 </li>
				<li style="color:blue;"> <a href="memberlogout.jsp"> 로그아웃 </a> </li>  <!-- </a>이거를 안 닫으니 장바구니 목록이랑 구매후기까지 로그아웃이 이뤄짐  -->
				<li> 장바구니 목록 </li>
				<li> 구매후기</li>
				<li> <a href="qnaboardlist.jsp"> 질문응답</a>  </li> <!--&nbsp;을 해도 이미 table이라 그닥 효과가..by 쌤 -->
			</ul><%
} //위에서  else if((logincheck.equals("fail"))||(logincheck.equals(""))) 이거를 아예 생략
else {  %> 	<ul> 
<li style="color:blue;">예비 고객님 안녕하세요 </li>  
<li style="color:blue;"> <a href="memberlogin.jsp">  로그인  </a></li>
<li> <a href="memberjoin.jsp">회원가입</a> </li>
<li> 장바구니 목록 </li>
				<li> 구매후기</li>
				<li> <a href="qnaboardlist.jsp"> 질문응답</a>  </li> <!--&nbsp;을 해도 이미 table이라 그닥 효과가..by 쌤 -->
			</ul>
<%	}  %>			</div>
  </header>

  <nav id="menunav">
  <ul id="menu"> 
  <li> <a href="list_all_item.jsp"> 전체 제품 목록 </a> </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <li> <a href="list_brand.jsp"> 브랜드 보기 </a> </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <li> <a href="mypage.jsp">  마이페이지  </a></li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  </nav>