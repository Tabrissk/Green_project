  function namechck()  { //이름을 공백으로 두지 않았는지
  var temp=memtable.nameck.value
  if(temp == '')   { 
  alert("아무 것도 선택하지 않았네요")
  memtable.nameck.focus()
  }
  else {
   alert("입력하시느라 고생하였습니다. 국적을 확인해 주세요")
}}

  function nationchck()  { 
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
  memtable.idcheck.value ="";
memtable.idcheck.focus() //focus를 해라니깐 옮겨지는거
}}

  function passwdinputcheck()  { //비번을 체크할때 일치하는지
  var pass1 = memtable.passwd.value ;
  var pass2 = memtable.passwdcheck.value ;
  
  if(pass1 === pass2 ) { 
  alert("비밀번호가 일치합니다. 입력해주셔서 고맙습니다.")
  }
  else {
   alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.")
  memtable.passwdcheck.value ="";
  memtable.passwdcheck.focus() //focus를 해
    }
  if((pass1.length < 5) || (pass2.length < 5) ) {  //if랑 else if,else는 이게 세트로 뭐에 걸리는지 보는데 if,if를 쓰면 다 체크는 한다
  alert("하지만 비밀번호를 5자리 이상 입력해주세요. 다시입력해주세요.")
  }
  }


function passwdvalidcheck(){ //비번이 유효한지
  var pass1 = memtable.passwd.value.length ;
  if((pass1 < 5) ) { 
     alert("비밀번호를 5자리 이상 입력해주세요.")
  memtable.passwdcheck.value ="";
  memtable.passwdcheck.focus()
  }
  else{
  alert("적합한 비밀번호입니다.")
} }

  function suggestinch()  {
  var str = " "
  if(memtable.joinreason1.checked)
  str +="검색, "
  
    if(memtable.joinreason2.checked)
	str +="지인추천, "
	
    if(memtable.joinreason3.checked)
	str +="포털 홍보, "
	
	alert("여러분이 오신 경로는 = "+ str +"를 통해서 오셨습니다.");
}

function totalcheck()  {
  var adrstr = memtable.addressinput.value
  if(adrstr == ''){
  alert("주소는 꼭 !입력해주세요. 배송과 관련있습니다.")
  memtable.addressinput.focus()
  }
  else {
   alert("주소입력 감사드립니다.회원가입을 축하드립니다..")
  }
  var saystr=memtable.extresaying.value
  if(saystr=='') {
  alert("아무말이나 입력해주세요.")
  memtable.extresaying.focus()
  }
  else {
  alert("말씀고맙습니다. 회원가입을 축하드립니다..")
  }
}
