<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>  <meta charset="UTF-8">  <title>가안 브랜드 목록 클릭 </title>

<link rel="stylesheet" href="../CSS/projcss.css">
<script>
$(function(){ //슬라이드
  $('.indexslider').bxSlider({
    mode: 'fade',
    captions: true,
	adaptiveHeight: true, //말그대로 이미지에 따라 슬라이드 크기가 조절
  });
});

</script> 
		</head>
 <body> 
<jsp:include page="../CSS/indexHeader.jsp"></jsp:include>

  <section>
 
	 <section>
  <div id="box">

   <div class=framelayout id="Inbanner1"> <!-- 브랜드 목록 -->
   브랜드 목록<br>&nbsp;&nbsp;
   <span id="brandlist">구찌 &nbsp;&nbsp;</span><span id="brandlist"> 겔랑 &nbsp;&nbsp;</span><span id="brandlist"> 나르시소 로드리게즈 &nbsp;&nbsp;</span><span id="brandlist">  돌체앤가바나  &nbsp;&nbsp;</span><span id="brandlist"> 디올 &nbsp;&nbsp;</span><span id="brandlist"> 딥디크 &nbsp;&nbsp;</span><span id="brandlist"> 르라보 &nbsp;&nbsp;</span><span id="brandlist"> 마크제이콥스 &nbsp;&nbsp; </span><span id="brandlist">몽블랑 &nbsp;&nbsp; </span><span id="brandlist">메종 마르지엘라 &nbsp;&nbsp;</span><span id="brandlist"> 메종프란시스 커정 &nbsp;&nbsp;</span><span id="brandlist"> 바이레도 &nbsp;&nbsp;</span><span id="brandlist"> 발렌티노 &nbsp;&nbsp;</span> <span id="brandlist">버버리 &nbsp;&nbsp;</span><span id="brandlist"> 샤넬 &nbsp;&nbsp;</span><span id="brandlist">  세르주루텐 &nbsp;&nbsp;</span><span id="brandlist"> 아뜰리에 코롱 &nbsp;&nbsp;</span><span id="brandlist"> 조말론 &nbsp;&nbsp;</span><span id="brandlist"> 크리드 &nbsp;&nbsp;</span><span id="brandlist"> 클린 리저브 &nbsp;&nbsp;</span><span id="brandlist"> 케네스콜 &nbsp;&nbsp;</span><span id="brandlist">톰포드 &nbsp;&nbsp;</span><span id="brandlist">  프라다 &nbsp;&nbsp;</span><span id="brandlist"> 프레데릭말 &nbsp;&nbsp;</span> </div>

   <div class=framelayout id="Inbanner2"> <!--브랜드 사진 -->
   <div class =layoutart id=cont> <!--브랜드별 제품 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_chanel_allure_sport.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div>
   </div></div>

  <div class =layoutart id=cont><!--브랜드별 제품 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_chanel_bluede.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div>
   </div></div>

  <div class =layoutart id=cont><!--브랜드별 제품 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_creed_aven.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div>
   </div></div>

  <div class =layoutart id=cont><!--브랜드별 제품 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_creed_green.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div>
   </div></div>

     <div class =layoutart id=cont><!--브랜드별 제품 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_creed_org.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div>
   </div></div>

     <div class =layoutart id=cont><!--브랜드별 제품 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_lelabo_bergamote.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div>
   </div></div>
   
        <div class =layoutart id=cont><!--브랜드별 제품 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_lelabo_lys.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div>
   </div></div>
   
        <div class =layoutart id=cont><!--브랜드별 제품 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_lelabo_rose.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div>
   </div></div>
   
   </div>    
</div>
 <img src="../projImg/backimg_item_button.jpg" style="position:relative; left:350px;"> 
  </section>
  
<jsp:include page="../CSS/indexFooterwfloat2.jsp"></jsp:include>
 </body>
</html>
