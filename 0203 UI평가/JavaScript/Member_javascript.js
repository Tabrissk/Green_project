  
  /* 아이디 중복체크-jsp랑 연동*/
var beforeinsert =0;

  function idoverlapf()  {
//alert("테스트")
	  var idtemp=memtable.idcheck.value
  if(idtemp == '')   { 
  alert("아이디를 입력해주세요")
  memtable.idcheck.focus()
  }
  else {
	  location.href='idoverlap.jsp?idcheck='+idtemp
	  //자바스크립트안에 jsp문법을 쓰면 안되니 link시켜야되는데 location.href로 보내고 id값도 같이 보내고
	  } 
}     /* 지금 이파일에서 안되는거는 이유를 모르니 그냥 html에다가 직접 입력도 해보기*/

function totalcheck()  {
	 //이름을 공백으로 두지 않았는지
	  var tempname=memtable.nameck.value
  if(tempname == '')   { 
  alert("이름이 없으시나요? 아무 것도 없으시네요")
  memtable.nameck.focus()
  }
  else {
   alert("이름을 입력하시느라 고생하였습니다.")
}
//국적이 뭔지. 공백으로 두지 않았는지를 for안의 if뒤에 else로 두고 alert을 설정
     for(var i=0; i < memtable.nationalch.length ; i++){
    if(memtable.nationalch[i].checked==true){
	alert(memtable.nationalch[i].value + " 이시네요. 확인해 주세요")
	}   }
//아이디 입력
 var idcheck_len = memtable.idcheck.value.length
  
  if((idcheck_len >= 5) && (idcheck_len <= 8) ) { 
  alert("아이디를 알맞게 입력해주셔서 감사합니다.")
  }
   else {
   alert("5~8자 사이의 아이디만 유효합니다.")
  memtable.idcheck.value =""; //초기화해서 다시 입력할수 있게 해주는거
memtable.idcheck.focus() //focus를 해라니깐 옮겨지는거
}
//비번 확인
   var pass1 = memtable.passwd.value ;
  var pass2 = memtable.passwdcheck.value ;
   var passlen = memtable.passwd.value.length ;
   
  if((pass1 === pass2)&&(pass1!="") ) { 
  alert("적합한 비밀번호이고 확인용 비밀번호와 서로 일치합니다.")
  }
  else if((pass1 === pass2)&&(passlen < 5)){
	   alert("일치하여도 비밀번호는 5자리 이상 입력해주세요.")
  memtable.passwd.value =""; //초기화해서 비밀번호를 다시 입력할수 있게
  memtable.passwd.focus() 
  }
  else 	  {
   alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.")
  memtable.passwdcheck.value =""; //초기화해서 비밀번호 확인을 다시 입력
  memtable.passwdcheck.focus()
    }
	
//일반 전화 공백확인
  var tel2str = memtable.telphone2.value 
  var tel3str = memtable.telphone3.value
  if((tel2str == '')||(tel3str == '')){
  alert("일반전화 번호를 입력해 주세요.")
  memtable.emailstr.focus()
  }
  else {
   alert("일반 전화번호 입력 감사드립니다.")
  }
  
//휴대전화 공백
  var cel3str = memtable.celphone3.value 
  var cel4str = memtable.celphone4.value
  if((cel3str == '')||(cel4str == '')){
  alert("휴대전화는 꼭 입력해 주세요.")
  memtable.emailstr.focus()
  }
  else {
   alert("휴대전화 번호 입력 감사드립니다.")
  }

//이메일 공백으로

  var emailstr = memtable.emailinput1.value
  if(emailstr == ''){
  alert("이메일을 꼭 입력해 주세요.")
  memtable.emailstr.focus()
  }
  else {
   alert("이메일을 입력 감사드립니다.")
  }

//주소를 공백으로 두지 않았는지 1. 처음 우편번호 검색
  var adrstr1 = memtable.addres1.value  
  if(adrstr1 == ''){
  alert("검색을 통한 우편번호는 꼭 !입력해주세요. 배송과 관련있습니다.")
  memtable.addres1.focus()
  }
  else {
   alert("우편번호입력 감사드립니다.")
  }
  
//주소를 공백으로 두지 않았는지 2. 추가 입력때
    var adrstr3 = memtable.addres3.value
  if(adrstr3 == ''){
  alert("상세 주소는 꼭 !입력해주세요. 배송과 관련있습니다.")
  memtable.addres3.focus()
  }
  else {
   alert("상세 주소입력 감사드립니다.")
  }
 
  //하고싶은 말을 공백으로 두지 않았는지
  var saystr=memtable.extresaying.value
  if(saystr=='') {
  alert("아무말이나 입력해주세요.")
  memtable.extresaying.focus()
  }
  else {
  alert("말씀고맙습니다.")
  }
  
  if((idtemp != '')&&(tempname != '')&&(pass1 != pass2) && (tel2str != '')&&(tel3str != '')&&(cel3str != '')&&(cel4str != '')&&(adrstr1 != '')&&(adrstr3 != '')&&(saystr !=''))
  {
	  alert("뭔가 문제가 있습니다.")
	  beforeinsert = 1;
  }
  else {
	  alert("문제가 없습니다.")
	  beforeinsert = 0;
  }
}

  function totalfinalcheck()  {
	  if(beforeinsert !=1) {
 // alert("합격")
		  // form의 이름.submit();
		  memtable.submit()
  }
  else if(beforeinsert ==1) {
  alert("불합격 뭔가 비어있습니다.")
  }
  }
  
  function sample6_execDaumPostcode() {
      new daum.Postcode({
          oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

              // 각 주소의 노출 규칙에 따라 주소를 조합한다.
              // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
              var addr = ''; // 주소 변수
              var extraAddr = ''; // 참고항목 변수

              //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
              if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                  addr = data.roadAddress;
              } else { // 사용자가 지번 주소를 선택했을 경우(J)
                  addr = data.jibunAddress;
              }

              // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
              if(data.userSelectedType === 'R'){
                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                      extraAddr += data.bname;
                  }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                  if(data.buildingName !== '' && data.apartment === 'Y'){
                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                  }
                  // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                  if(extraAddr !== ''){
                      extraAddr = ' (' + extraAddr + ')';
                  }
                  // 조합된 참고항목을 해당 필드에 넣는다.
                  document.getElementById("sample6_extraAddress").value = extraAddr;
              
              } else {
                  document.getElementById("sample6_extraAddress").value = '';
              }

              // 우편번호와 주소 정보를 해당 필드에 넣는다.
              document.getElementById('sample6_postcode').value = data.zonecode;
              document.getElementById("sample6_address").value = addr;
              // 커서를 상세주소 필드로 이동한다.
              document.getElementById("sample6_detailAddress").focus();
          }
      }).open();
  }
  
/*
 <!-- 원래 하던거 백업 -->
 // 학원 컴터의 editplus로 js나 css파일을 만들어서 거기에 한글을 붙이면 나중에 한글이 깨진다. 이유는 모름
 //$(document).ready(function()  <<-이거랑 $(function() <<- 이거랑 같다+ 그리고 이거쓰면 길이가 너무 쫙늘어난다.

  function namechck()  { //이름을 공백으로 두지 않았는지
  var temp=memtable.nameck.value
  if(temp == '')   { 
  alert("아무 것도 선택하지 않았네요")
  memtable.nameck.focus()
  }
  else {
   alert("입력하시느라 고생하였습니다. 국적을 확인해 주세요")
}}

  function nationchck()  { //국적이 뭔지. 공백으로 두지 않았는지를 for안의 if뒤에 else로 두고 alert을 설정했는데 그러면 내국인을 선택하면 외국인이 아니니  else알림이 그냥 뜬다. 둘다 선택을 안하면 거기서만 알림이 2번뜨고
     for(var i=0; i < memtable.nationalch.length ; i++){
    if(memtable.nationalch[i].checked==true){
	alert(memtable.nationalch[i].value + " 이시네요.")
	}   }
   if((memtable.nationalch[0].checked==false)&&(memtable.nationalch[1].checked==false)){
   alert("국적은 선택해주세요.")
   }
}

  function idcheckf()  { //아이디를 적정길이에 입력을 했는지
  var pass_len = memtable.idcheck.value.length
  
  if((pass_len >= 5) && (pass_len <= 8) ) { 
  alert("입력해주셔서 감사합니다.")
  }
   else {
   alert("5~8자 사이의 아이디만 유효합니다.")
  memtable.idcheck.value =""; //초기화해서 다시 입력할수 있게 해주는거
memtable.idcheck.focus() //focus를 해라니깐 옮겨지는거
}
}
function passwdvalidcheck(){ //비번이 유효한지
  var pass1 = memtable.passwd.value.length ;
  if((pass1 < 5) ) { 
     alert("비밀번호를 5자리 이상 입력해주세요.")
  memtable.passwdcheck.value =""; //초기화해서 다시 입력할수 있게 해주는거
  memtable.passwdcheck.focus() //focus를 해라니깐 옮겨지는거
  }
  else{
  alert("적합한 비밀번호입니다.")
} }

  function passwdinputcheck()  { //비번을 체크할때 일치하는지
  var pass1 = memtable.passwd.value ;
  var pass2 = memtable.passwdcheck.value ;
  
  if(pass1 === pass2 ) { 
  alert("비밀번호가 일치합니다. 입력해주셔서 고맙습니다.")
  }
  else {
   alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.")
  memtable.passwdcheck.value =""; //초기화해서 다시 입력할수 있게 해주는거
  memtable.passwdcheck.focus() //focus를 해라니깐 옮겨지는거
    }
  if((pass1.length < 5) || (pass2.length < 5) ) {  //if랑 else if,else는 이게 세트로 뭐에 걸리는지 보는데 if,if를 쓰면 다 체크는 한다
  alert("하지만 비밀번호를 5자리 이상 입력해주세요. 다시입력해주세요.")
  }
  }


  function suggestinch()  {
  var str = " "
  if(memtable.joinreason1.checked)
  str +="검색, "
  
    if(memtable.joinreason2.checked)
	str +="지인추천, "
	
    if(memtable.joinreason3.checked)
	str +="포털 홍보, "
	
	alert("여러분이 오신 경로는 = "+ str +"를 통해서 오셨습니다.");
	 //document.write(str) 이거를 쓰면 새로운창에 내가 선택한거가 str로 바뀌어서 나온다.
}
*/
