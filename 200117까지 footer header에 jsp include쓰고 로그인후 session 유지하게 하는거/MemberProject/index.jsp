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
    slideWidth:1300, //슬라이드 가로폭
    // adaptiveHeight: true, //말그대로 이미지에 따라 슬라이드 크기가 조절
  });
});

</script> 
		</head>
 <body> 
<jsp:include page="../CSS/indexHeader.jsp"></jsp:include>

  <section >
  <div style="position:relative; top:50px; left:250px; width:1300px;"> 
	 <ul class="indexslider">
	 <li><img src="../projImg/indexSlide1.jpg" title="pic1"></li>
  <li><img src="../projImg/indexSlide2.jpg" title="pic2"></li>
    <li><img src="../projImg/indexSlide3.jpg" title="pic3"></li>
      <li><img src="../projImg/indexSlide4.jpg" title="pic4"></li>
  </ul> </div>
    </section>
<jsp:include page="../CSS/indexFooterwfloat1_index.jsp"></jsp:include>
 </body>
</html>
