function check(){
	
	// 아이디 비밀번호 체크 정규식
	var check = /^[a-z0-9_]{4,20}$/;
	// 전화번호 체크 정규식
	var checkTel = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
	
	if(regFrm.id.value == ""){
		Materialize.toast('아이디를 입력해주세요!', 4000);
		regFrm.id.focus();
		return false;
	}else if(!check.test(regFrm.id.value)){
		Materialize.toast('아이디는 4 - 20글자 영문/숫자만 가능합니다!', 4000);
		regFrm.id.value = "";
		regFrm.id.focus();
		return false;
	}else if(regFrm.pwd.value == ""){
		Materialize.toast('비밀번호를 입력해주세요!', 4000);
		regFrm.pwd.focus();
		return false;
	}else if(!check.test(regFrm.pwd.value)){
		Materialize.toast('비밀번호는 4 - 20글자 미만으로 가능합니다!', 4000);
		regFrm.pwd.value = "";
		regFrm.pwd.focus();
		return false;
	}else if(regFrm.tel.value == ""){
		Materialize.toast('전화번호를 입력해주세요!', 4000);
		regFrm.tel.focus();
		return false;
	}else if(!checkTel.test(regFrm.tel.value)){
		Materialize.toast('전화번호 형식에 맞게 써주세요! ex) 010-1234-5678', 4000);
		regFrm.tel.value = "";
		regFrm.tel.focus();
		return false;
	}else if(regFrm.birth.value == ""){
		Materialize.toast('생년월일을 입력해주세요!', 4000);
		regFrm.birth.focus();
		return false;
	}else{
		cut = regFrm.birth.value.split(" ");
		comma = cut[1].replace(",","");
		switch(comma){
	      case "January": comma = "01"; break;
	      case "February": comma = "02"; break;
	      case "March": comma = "03"; break;
	      case "April": comma = "04"; break;
	      case "May": comma = "05"; break;
	      case "June": comma = "06"; break;
	      case "July": comma = "07"; break;
	      case "August": comma = "08"; break;
	      case "September": comma = "09"; break;
	      case "October": comma = "10"; break;
	      case "November": comma = "11"; break;
	      case "December": comma = "12"; break;
	      }
		if(cut[0] < 10){
			cut[0] = "0"+cut[0];
		}
		regFrm.birth.value = cut[2]+"-"+comma+"-"+cut[0];
		alert(regFrm.birth.value);
		return true;
	}
}
	
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