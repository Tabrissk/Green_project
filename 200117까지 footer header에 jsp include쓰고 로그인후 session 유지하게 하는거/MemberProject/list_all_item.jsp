<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>  <meta charset="UTF-8">  <title>가안 index 첫화면 </title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

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

  <section id="box">
     <div class=framelayout id="InbannerAll"><!--전체 제품 목록-->

	 <div class =layoutart id=cont> <!--1번째 -->
	 <!--처음class=layout이 .layout{ border: 1px solid black;  float:left;  }art 이거랑 .layout{float:left;}이거가 이름이 겹쳤다-->
    <div class =layoutart id=contimg> <img src="../projImg/p_chanel_bluede.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div> </div> 	</div>

	 <div class =layoutart id=cont> <!--2번째 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_creed_aven.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div> </div> 	</div>

		 <div class =layoutart id=cont> <!--3번째 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_creed_green.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div> </div> 	</div>

		 <div class =layoutart id=cont> <!--4번째 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_creed_org.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div> </div> 	</div>

		 <div class =layoutart id=cont> <!--5번째 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_lelabo_bergamote.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div> </div> 	</div>

		 <div class =layoutart id=cont> <!--6번째 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_lelabo_lys.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div> </div> 	</div>

		 <div class =layoutart id=cont> <!--7번째 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_lelabo_rose.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div> </div> 	</div>
	
	 
		 <div class =layoutart id=cont> <!--8번째 -->
    <div class =layoutart id=contimg> <img src="../projImg/p_tomfd_oudwood.jpg" width=100% height=100%> </div>
	<div class =layoutart id=contarticle> 
	<div class = "itemtitle1" align = left> 제품명 </div>
	<div class = "itemtitle2" align = left> 구입 가능한 용량 </div>
	<div class = "itemtitle2" align = left> 가격</div>
	<div class = "itemtitle2" align = left> 설명</div> </div> 	</div>
 </div> 
   <img src="../projImg/backimg_item_button.jpg" style="position:relative;"><!--box안에 포함되어있어서 margin-left을 다시 넣을 필요가 없다-->
</section>
  
<jsp:include page="../CSS/indexFooterwfloat2.jsp"></jsp:include>
 </body>
</html>
