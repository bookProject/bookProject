// 계정 생성때 회원가입 검사
function regCheck(){
 
 // 아이디,비밀번호 체크
 var languageCheck = /^[a-z0-9_]{3,20}$/;

 //전화번호 체크
 var telCheck = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
 if(regFrm.id.value == ""){
	 Materialize.toast('아이디를 채워주세요!', 4000);
	 regFrm.id.focus();
	 return false;
 }else if(!languageCheck.test(regFrm.id.value)){
	 Materialize.toast('4글자 이상 20글자 미만, 영어만 가능합니다!', 4000);
	 regFrm.id.focus();
	 return false;
	 
 }else if(regFrm.pwd.value == ""){
	 Materialize.toast('비밀번호를 채워주세요!', 4000);
	 regFrm.pwd.focus();
	 return false;
 	}else if(!languageCheck.test(regFrm.pwd.value)){
 		Materialize.toast('비밀번호는 4글자 이상 20글자 미만으로 채워주세요!', 4000);
 		 regFrm.pwd.focus();	
 		return false;
 	}else if(regFrm.tel.value == ""){
 		Materialize.toast('전화번호를 채워주세요!', 4000);
 		regFrm.tel.focus();
 		return false;
 	}else if(!telCheck.test(regFrm.tel.value)){
 		Materialize.toast('전화번호 표현에 맞게 써주세요! ex)010-1234-5678', 4000);
 		regFrm.tel.focus();
 		return false;
 		
 	}else if(regFrm.birth.value == ""){
 		Materialize.toast('생일을 채워주세요!', 4000);
 		regFrm.birth.focus();
 		 return false;
 		 
 	}
 	
}

//로그인 빈값 / 화원가입 url
function loginCheck(){
	if(loginFrm.id.value == ""){
		Materialize.toast('아이디를 채워주세요!', 4000);
		loginFrm.id.focus();
		return false;
	}else if(loginFrm.passwd.value == ""){
		Materialize.toast('비밀번호를 채워주세요!', 4000);
		loginFrm.pwd.focus();
		return false;
	}else{
	
	}
}

function goReg(){
	location.href="register.jsp";
}