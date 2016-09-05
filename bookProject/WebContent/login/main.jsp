<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"dd6f649abc","applicationID":"1592190","transactionName":"JQkLQxYMW1xWQBYNDAsDSl4KB1JI","queueTime":0,"applicationTime":37,"agent":""}</script>
<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o||e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e,n){function r(){}function o(t,e,n){return function(){return i(t,[(new Date).getTime()].concat(u(arguments)),e?null:this,n),e?void 0:this}}var i=t("handle"),a=t(2),u=t(3),c=t("ee").get("tracer"),f=NREUM;"undefined"==typeof window.newrelic&&(newrelic=f);var s=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit"],p="api-",l=p+"ixn-";a(s,function(t,e){f[e]=o(p+e,!0,"api")}),f.addPageAction=o(p+"addPageAction",!0),e.exports=newrelic,f.interaction=function(){return(new r).get()};var d=r.prototype={createTracer:function(t,e){var n={},r=this,o="function"==typeof e;return i(l+"tracer",[Date.now(),t,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[Date.now(),r,o],n),o)try{return e.apply(this,arguments)}finally{c.emit("fn-end",[Date.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){d[e]=o(l+e)}),newrelic.noticeError=function(t){"string"==typeof t&&(t=new Error(t)),i("err",[t,(new Date).getTime()])}},{}],2:[function(t,e,n){function r(t,e){var n=[],r="",i=0;for(r in t)o.call(t,r)&&(n[i]=e(r,t[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],3:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(o<0?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=r},{}],ee:[function(t,e,n){function r(){}function o(t){function e(t){return t&&t instanceof r?t:t?u(t,a,i):i()}function n(n,r,o){t&&t(n,r,o);for(var i=e(o),a=l(n),u=a.length,c=0;c<u;c++)a[c].apply(i,r);var s=f[m[n]];return s&&s.push([w,n,r,i]),i}function p(t,e){g[t]=l(t).concat(e)}function l(t){return g[t]||[]}function d(t){return s[t]=s[t]||o(n)}function v(t,e){c(t,function(t,n){e=e||"feature",m[n]=e,e in f||(f[e]=[])})}var g={},m={},w={on:p,emit:n,get:d,listeners:l,context:e,buffer:v};return w}function i(){return new r}var a="nr@context",u=t("gos"),c=t(2),f={},s={},p=e.exports=o();p.backlog=f},{}],gos:[function(t,e,n){function r(t,e,n){if(o.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[e]=r,r}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){o.buffer([t],r),o.emit(t,e,n)}var o=t("ee").get("handle");e.exports=r,r.ee=o},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!h++){var t=y.info=NREUM.info,e=s.getElementsByTagName("script")[0];if(t&&t.licenseKey&&t.applicationID&&e){c(m,function(e,n){t[e]||(t[e]=n)});var n="https"===g.split(":")[0]||t.sslForHttp;y.proto=n?"https://":"http://",u("mark",["onload",a()],null,"api");var r=s.createElement("script");r.src=y.proto+t.agent,e.parentNode.insertBefore(r,e)}}}function o(){"complete"===s.readyState&&i()}function i(){u("mark",["domContent",a()],null,"api")}function a(){return(new Date).getTime()}var u=t("handle"),c=t(2),f=window,s=f.document,p="addEventListener",l="attachEvent",d=f.XMLHttpRequest,v=d&&d.prototype;NREUM.o={ST:setTimeout,CT:clearTimeout,XHR:d,REQ:f.Request,EV:f.Event,PR:f.Promise,MO:f.MutationObserver},t(1);var g=""+location,m={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-974.min.js"},w=d&&v&&v[p]&&!/CriOS/.test(navigator.userAgent),y=e.exports={offset:a(),origin:g,features:{},xhrWrappable:w};s[p]?(s[p]("DOMContentLoaded",i,!1),f[p]("load",r,!1)):(s[l]("onreadystatechange",o),f[l]("onload",r)),u("mark",["firstbyte",a()],null,"api");var h=0},{}]},{},["loader"]);</script>
    <link href="image/bookshelf.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
    <title>OO전자도서관</title>

<meta content="website" property="og:type" />

    <link href="../css/main.css" media="screen" rel="stylesheet" type="text/css" />
    <script src="https://d12hfz37g51hrt.cloudfront.net/assets/intro-9147722957a78a6e9fe51f0a2e6f3a07.js" type="text/javascript"></script>
    <meta content="authenticity_token" name="csrf-param" />
<meta content="Mind/HZUE6eZN3KWpoCo3JY4pt1FOLLet7fUEmzqaeI=" name="csrf-token" />
 
<script type="text/javascript" src="../js/jquery-3.1.0.js"></script>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
<script type="text/javascript" src="../js/materialize.min.js"></script>

   
<script type="text/javascript">
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-27006241-2', 'auto');

  ga('set', 'dimension1', 'visitor')
  ga('set', 'dimension2', '0')
  ga('set', 'dimension3', '0')
  ga('set', 'dimension4', 'Visitor')
  ga('set', 'dimension5', '222.106.196.223')

  var HALF_STAR = "half"
  var halfStarToUa = 'half_b'

  ga('set', 'dimension6', halfStarToUa)
  ga('set', 'dimension7', 'n/a');

  ga('send', 'pageview');
</script>

  </head>
  <body class="intro">
    <div id="contents">
      <div class="bg"></div>
      <div class="bg-alpha"></div>
      <div class="content">
        <div class="bg-alpha inner"></div>
        <div class="content-wrapper">
          <img class="logo" src="https://d12hfz37g51hrt.cloudfront.net/assets/intro/intro_watcha_logo-702a3b4773fded9c9831132f6f875a60.png" alt="로고" /><br /><br />
          
          <!-- 가운데 로고 -->
          <img src="../image/text.png" alt="중앙 이미지"/><br /><br />
          <span class="service-msg">OO전자도서관에 오신걸 환영합니다.</span>
          <span class="service-msg">서비스를 이용하실려면 로그인이 필요합니다.</span><br />
          <div class="buttons-wrapper">
          
           	
            <a href="login.jsp" class="waves-effect waves-light btn N/A transparent z-depth-3" style="font-size: 20px;"><b>로그인</b></a>
            
            <br />
              <a href="register.jsp"  class="waves-effect waves-light btn N/A transparent z-depth-3" style="font-size: 20px;"><b>회원가입</b></a>
            </div>
          </div>
        </div>
      </div>
      <div class="left-bottom">
        <a href="#" class="legal-privacy-button">개인정보취급방침</a>
      </div>
    
   
    <div class="legal-element  legal-privacy ">
  <div class="modal">
    <div class="legal-dialog">
      <div class="legal-dialog__header">개인정보 취급방침</div>
      <a class="legal-dialog__close">
        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
          <g transform="scale(1.5)">
            <line fill="none" stroke="#000000 " stroke-width="2" stroke-miterlimit="10" x1="0.815" y1="0.8" x2="19.184" y2="19.2"/>
            <line fill="none" stroke="#000000 " stroke-width="2" stroke-miterlimit="10" x1="0.815" y1="19.2" x2="19.184" y2="0.8"/>
          </g>
        </svg>
      </a>
      <div class="legal-dialog__content">
        <div>
          <div class="legal-privacy-section legal-privacy-section--hidden">
            총칙<br/>
            주식회사 프로그램스는(이하 ‘회사’라고 합니다)는 왓챠(Watcha), 왓챠플레이(WATCHA PLAY) 및 왓챠 관련 제반 서비스(이하 “서비스”라고 합니다)를 이용하는 회원의 개인정보 보호를 소중하게 생각하고, 회원의 개인정보를 보호하기 위하여 항상 최선을 다해 노력하고 있습니다.<br/>
            회사는 개인정보 보호 관련 주요 법률인 개인정보 보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 “정 보통신망법”이라고 합니다.)을 비롯한 모든 개인정보 보호에 관련 법률 규정 및 국가기관 등이 제정한 고시, 훈령, 지침 등을 준수합니다.<br/>
            <br/>
            본 개인정보취급방침은 왓챠, 왓챠플레이 및 왓챠 관련 제반 서비스를 이용하는 회원에 대하여 적용되며, 회원에 대하여 적용되며, 회원이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보 보호를 위하여 어떠한 조처를 취하고 있는지 알립니다.<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section">
            개인정보의 수집·이용에 대한 동의<br/>
            회사에서 적법하고 공정한 방법에 의하여 서비스 이용계약의 성립 및 이행에 필요한 최소한의 개인정보를 수집하며 이용자의 개인 식별이 가능한 개인정보를 수집하기 위하여 회원가입시 개인정보수집·이용 동의에 대한 내용을 제공하고 회원이 '동의' 버튼을 클릭하면 개인정보 수집·이용에 대해 동의한 것으로 봅니다.
            <br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section">
            개인정보의 수집범위 및 수집방법<br/>
            1. 회사는 회원가입, 상담, 서비스 신청 등 서비스 제공 및 계약이행을 위해 아래와 같이 개인정보를 수집할 수 있습니다.<br/>
            - 아이디(이메일 주소), 비밀번호, 페이스북 이메일과 회원번호(페이스북 연동 회원에 한함), 이름, 생년월일, 성별,<br/>
            내/외국인 여부, 아이핀 번호(아이핀 사용자의 경우), 휴대전화번호, 연계정보(CI), 중복확인정보(DI),<br/>
            2. 회사는 회원이 유료 서비스를 이용하고자 하는 경우 결제 시점에 아래와 같이 결제에 필요한 정보를 수집할 수 있습니다.<br/>
            - 결제수단 소유자 정보(이름, 주민등록번호), 신용카드정보, 휴대전화번호, 유선전화번호<br/>
            3. 회사는 회원이 이벤트, 프로모션에 참여하는 경우 아래의 정보를 수집할 수 있습니다. - 이름, 이메일 주소, 휴대전화번호, 주소, 생년월일<br/>
            4. 서비스 이용과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.<br/>
            - PC : PC MacAddress, PC 사양정보, 브라우저 정보, 기타 서비스 이용 시 사용되는 프로그램 버전 정보<br/>
            - 휴대전화(스마트폰) & 스마트OS 탑재 모바일 기기(Tablet PC 등) : 모델명, 기기별 고유번호(UDID 등), OS정보 - 기타 정보 : 서비스 이용(정지) 기록, 접속 로그, 쿠키, 접속 IP정보<br/>
            5. 회사는 다음과 같은 방식으로 개인정보를 수집합니다.<br/>
            - 홈페이지 이용 및 서면양식, 상담 게시판, 경품 행사 응모, 배송요청 - 제휴 회사로부터의 제공<br/>
            - 생성정보 수집툴을 통한 수집<br/>
            6. 기본적 인권침해의 우려가 있는 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 요구하지 않으며, 위의 항목 이외에 다른 어떠한 목적으로도 수집, 사용하지 않습니다.<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section">
            개인정보의 수집목적 및 이용목적<br/>
            회사는 수집한 개인정보를 다음의 목적으로 활용합니다.<br/>
            1. 서비스 제공에 관한 계약 이행 유료 서비스 제공에 따른 요금정산<br/>
            콘텐츠 제공, 유료 서비스 이용에 대한 과금, 구매 및 요금 결제, 본인인증, 물품배송 또는 청구서 등 발송, 요금 추심<br/>
            2. 회원관리<br/>
            회원제 서비스 이용에 따른 본인확인, 개인식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 중복가입확인, 가 입의사 확인, 연령확인, 만 14세 미만 아동 개인정보 수집 시 법정대리인 동의 여부 확인, 만 18세 미만 아동 및 청 소년의 회원가입 시 법정대리인의 동의 여부 확인 및 법정대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달<br/>
            3. 마케팅 및 광고에 활용<br/>
            신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스 유효성 확인, 접속 빈도 파악, 회원의 서비스 이용에 대한 통계, 이벤트 및 광고성 정보와 참여기회 제공<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section legal-privacy-section--hidden">
            수집한 개인정보의 취급 위탁<br/>
            회사는 서비스 향상을 위해 아래와 같이 외부 전문업체에 개인정보를 위탁하여 운영하고 있습니다.<br/>
            [수탁업체 및 위탁업무내용]<br/>
            - (주) 다날: 휴대폰을 통한 결제 대행<br/>
            - (주) KG 이니시스: 신용카드를 통한 결제 대행 - NICE 신용평가 : 휴대폰, I-pin 사용자 본인인증<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section legal-privacy-section--hidden">
            개인정보의 자동 수집 장치의 설치, 운영 및 그 거부에 관한 사항<br/>
            쿠키란 웹 서버가 웹 브라우저에 보내어 저장했다가 서버의 부가적인 요청이 있을 때 다시 서버로 보내주는 문자열 정보(텍스트 파일)로 회원의 컴퓨터 하드디스크에 저장되며 쿠키 (cookie)에는 사용한 웹사이트의 정보 및 이용자 의 개인정보가 담길 수 있습니다.<br/>
            1. 회사에서 운영하는 서비스는 인터넷을 통하여 회원의 정보를 저장하고 수시로 찾아내는 쿠키(cookie)를 설치, 운용하고 있습니다. 회원이 웹사이트에 접속을 하면 회원의 브라우저에 있는 쿠키의 내용을 읽고, 추가정보를 찾아 접속에 따른 성명 등의 추가 입력없이 서비스를 제공할 수 있습니다.<br/>
            2. 회원은 쿠키 설치에 대한 선택권을 가지고 있으며 회원은 웹브라우저에서 옵션을 설정함으로서 모든 쿠키를 허용하거나, 또는 쿠키가 저장될 때마다 확인을 거치거나, 혹은 모든 쿠키의 저장을 거부할 수도 있습니다. 다만, 회원 님께서 쿠키 설치를 거부했을 경우 서비스 제공에 어려움이 발생할 수도 있습니다.<br/>
            3. 서비스 쿠키를 통해 수집하는 정보는 회원의 고유번호에 한하며, 그 외의 다른 정보는 수집하지 않습니다. 서비 스가 쿠키(cookie)를 통해 수집한 회원의 고유번호는 다음의 목적을 위해 사용될 수 있습니다.<br/>
            (1) 개인의 관심 분야에 따라 차별화 된 정보를 제공<br/>
            (2) 회원과 비회원의 접속 빈도 또는 머문 시간 등을 분석하여 이용자의 취향과 관심분야를 파악하여 타겟 (target) 마케팅에 활용<br/>
            (3) 서비스 이용 내역을 추적하여 분석을 통한 추후 개인 맞춤 서비스를 제공 및 서비스 개편 등의 척도로 활용<br/>
            (4) 유료서비스 이용 시 이용기간 안내 등<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section legal-privacy-section--hidden">
            개인정보의 공유 및 제공<br/>
            1. 회사는 회원의 개인정보를 본 개인정보취급방침에서 명시된 범위를 초과하여 이용하거나 제 3자(타인 또는 타기 업 기관)에 제공하지 않습니다. 다만, 회원의 동의가 있거나 다음 각호의 어느 하나에 해당하는 경우에는 예외로 합 니다.<br/>
            - 서비스 제공에 따른 요금 정산을 위하여 필요한 경우<br/>
            - 관계법령에 의하여 수사, 재판 또는 행정상의 목적으로 관계기관으로부터 요구가 있을 경우<br/>
            - 통계작성, 학술연구나 시장조사를 위하여 특정 개인을 식별할 수 없는 형태로 가공하여 제공하는 경우<br/>
            - 금융실명거래및비밀보장에관한법률, 신용정보의이용및보호에관한법률, 전기통신기본법, 전기통신사업법, 지방 세법, 소비자보호법, 한국은행법, 형사소송법 등 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우<br/>
            2. 영업의 전부 또는 일부를 양도하거나, 합병/상속 등으로 서비스제공자의 권리,의무를 이전 승계하는 경우 개인 정보보호 관련 회원의 권리를 보장하기 위하여 반드시 그 사실을 회원에게 통지합니다.<br/>
            3. 보다 나은 서비스 제공을 위하여 회사가 귀하의 개인정보를 타 기업 등 제3자에게 제공하는 것이 필요한 경우에 는 회사는 사전에 제휴사가 누구인지, 제공 또는 공유되어야 하는 개인정보항목이 무엇인지, 제공 또는 공유되는 개인정보의 이용목적, 그리고 언제까지 공유되며 어떻게 보호 관리되는 지에 대하여 귀하께 고지하여 동의를 구하 는 절차를 거칠 것이며, 귀하께서 동의하지 않는 정보는 제3자에 제공하거나 제3자와 공유하지 않습니다. 이 경우 고지 및 동의방법은 홈페이지내의 공지사항을 통해 최소 7일 이전부터 고지함과 동시에 전자우편 등의 방법을 통 하여 동의를 받습니다. 단 시간상 사전 공지가 불가능한 예외적인 경우는 제공 및 공유가 공지와 동시에 이루어질 수 있습니다. 회사는 개인정보취급방침에서 정한 본래의 수집목적 및 이용목적에 반하여 무분별하게 귀하의 개인 정보가 제공되지 않도록 최대한 노력하겠습니다.<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section legal-privacy-section--hidden">
            이용자 및 법정 대리인의 권리와 그 행사방법<br/>
            1. 회원 및 법정 대리인은 언제든지 등록되어 있는 자신 또는 당해 만 14세 미만 아동의 개인정보를 조회하거나 수 정할 수 있으며 가입해지를 요청할 수도 있습니다.<br/>
            2. 회원 또는 만 14세 미만 아동의 개인정보를 조회, 수정하기 위해서는 “개인정보변경”을, 가입해지를 위해서는 “회 원탈퇴”를 클릭하여 본인 확인 절차를 거친 후 직접 조회, 수정 또는 탈퇴가 가능합니다. 또는 개인정보관리책임자 에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.<br/>
            3. 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하 지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통 지하여 정정이 이루어지도록 하겠습니다. 단, 다음과 같은 경우에는 예외적으로 개인정보의 열람 및 정정을 제한할 수 있습니다.<br/>
            (1) 본인 또는 제 3 자의 생명, 신체, 재산 또는 권익을 현저하게 해할 우려가 있는 경우 (2) 당해 서비스 제공자의 업무에 현저한 지장을 미칠 우려가 있는 경우<br/>
            (3) 법령에 위반하는 경우<br/>
            4. 회사는 회원 또는 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 "수집한 개인정보의 보유 및 이용기 간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br/>
            5. 회사는 타인의 개인정보를 도용하여 회원가입 등을 하였음을 알게 된 때 지체없이 해당 아이디에 대한 서비스 이용정지 또는 회원탈퇴 등 필요한 조치를 취합니다. 또한 자신의 개인정보 도용을 인지한 이용자가 해당 아이디에 대한 서비스 이용정지 또는 회원탈퇴를 요구하는 경우에도 회사는 즉시 조치를 취합니다.<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section">
            개인정보의 보관기간 및 이용기간<br/>
            1. 이용자의 개인정보는 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 회원이 회원탈퇴를 하거 나 개인정보 허위기재로 인해 회원 ID 삭제 처분을 받은 경우 수집된 개인정보는 완전히 삭제되며 어떠한 용도로도 이용할 수 없도록 처리됩니다. 다만, 도용으로 인한 원치 않는 회원탈퇴 등의 피해가 발생할 우려가 있으므로 탈퇴 신청 후 7일의 유예기간 동안 개인정보를 임시 보관하게 되며, 이는 이용 해지 시 이용자에게 고지됩니다. 7일 후에 는 회사의 회원정보 데이터베이스(DB)에서 완전히 삭제됩니다.<br/>
            2. 또한 명의 도용 등 분쟁 발생시 본인확인을 위해 제출 받은 신분증 사본은 본인확인 후 즉시 파기합니다. 만 18세 미만 아동 및 청소년의 법정대리인 정보는 해당 아동 및 청소년이 성년에 도달하거나 해당 아동 및 청소년의 회원 탈퇴에 따른 개인정보 파기 시 함께 파기됩니다.<br/>
            3. 이용자의 개인정보는 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기되나, 아래 각 항목에 해당하는 경우에는 명시한 기간 동안 보관할 수 있으며, 그 외 다른 목적으로는 사용하지 않습니다.<br/>
            (1) 불건전한 서비스 이용으로 서비스에 물의를 일으킨 이용자의 경우 사법기관 수사의뢰를 하거나 다른 회원을 보호할 목적으로 1년간 해당 개인정보를 보관할 수 있습니다.<br/>
            (2) 관계법령의 규정에 의하여 보관할 필요가 있는 경우 회사는 수집 및 이용 목적 달성 후에도 관계법령 에서 정한 일정 기간 동안 회원의 개인정보를 보관할 수 있습니다.<br/>
            가. 계약 또는 청약철회 등에 관한 기록 : 5년<br/>
            나. 대금결제 및 재화의 공급에 관한 기록 : 5년<br/>
            다. 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 라. 표시, 광고에 관한 기록 : 1년<br/>
            마. 웹사이트 방문기록 : 1년<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section legal-privacy-section--hidden">
            개인정보의 파기절차 및 방법<br/>
            회사는 수집한 개인정보의 이용목적이 달성된 후 별도의 DB로 옮겨져 보관기간 및 이용기간에 따라 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.<br/>
            1. 파기절차<br/>
            회원이 서비스 가입 등을 위해 기재한 개인정보는 서비스 해지 등 이용목적이 달성된 후 내부 방침 및 기타 관련 법 령에 의한 정보보호 사유에 따라 일정기간( 개인정보 보관기간 및 이용기간 참조) 동안 저장 보관된 후 삭제되거나 파기합니다.<br/>
            2. 파기방법<br/>
            서면양식에 기재하거나, 종이에 출력된 개인정보는 분쇄기로 분쇄하여 파기하고, 전자적 파일형태로 저장된 개인 정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section legal-privacy-section--hidden">
            링크 사이트<br/>
            회사는 운영중인 서비스 홈페이지를 통하여 회원에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있 습니다. 이 경우 해당 사이트의 「개인정보취급방침」은 회사가 운영중인 서비스의 「개인정보취급방침」과 무관하므로 새로 방문한 사이트의 「개인정보취급방침」을 확인하시기 바랍니다.<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section legal-privacy-section--hidden">
            회원의 권리와 의무<br/>
            회원은 본인의 개인정보를 최신의 상태로 정확하게 입력하여 불의의 사고를 예방해주시기 바랍니다. 이용자가 입력한 부정확한 정보로 인해 발생하는 사고의 책임은 이용자 자신에게 있으며 타인 정보의 도용 등 허위정보를 입력 할 경우 계정의 이용이 제한될 수 있습니다.<br/>
            회사가 운영하는 서비스를 이용하는 회원은 개인정보를 보호 받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 있습니다. 회원은 아이디(ID), 비밀번호를 포함한 개인정보가 유출되지 않도록 조심 하여야 하며, 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해야 합니다. 만약 이 같은 책임을 다하지 못하고 타인의 정보 및 타인의 존엄성을 훼손할 경우에는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」등에 의해 처벌 받을 수 있습니다.<br/>
            <br/>
            <br/>
          </div>
          <div class="legal-privacy-section legal-privacy-section--hidden">
            고지의 의무<br/>
            현 「개인정보취급방침」 내용의 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지의 '공지사항'을 통해 고지하고, 개정 내용이 이용자에게 불리할 경우에는 30일간 고지할 것입니다. 변경 관련 문의는 고객센터를 통해 할 수 있습니다.<br/>
            <br/>
            <br/>
            개인정보관리책임자 및 담당자<br/>
            회사는 회원의 개인정보보호를 가장 중요시하며, 회원의 개인정보가 훼손, 침해 또는 누설되지 않도록 최선을 다하고 있습니다. 서비스를 이용하시면서 발생하는 모든 개인정보보호 관련 민원을 고객센터에 신고하시면 신속하게 답변해드리도록 하겠습니다.<br/>
            [개인정보관리책임자]<br/>
            성 명 : 박태훈<br/>
            직 위 : 대표이사<br/>
            전자우편 : tpark@frograms.com<br/>
            [개인정보관리담당자]<br/>
            성 명 : 김효진<br/>
            직 위 : 사업개발팀<br/>
            전자우편 : jason@frograms.com<br/>
            <br/>
            <br/>
            개인정보 침해 관련 상담 및 신고<br/>
            당사는 귀하의 의견을 소중하게 생각합니다.<br/>
            회사가 운영중인 서비스(왓챠, 왓챠플레이 및 관련 제반 서비스)에 대하여 문의사항이 있을 경우 고객센터 등에 문 의하시면 신속/정확한 답변을 드리겠습니다.<br/>
            당사는 귀하와 원활환 의사소통을 위해 고객상담센터를 운영하고 있으며 연락처는 다음과 같습니다.<br/>
            [고객상담센터]<br/>
            - 전화번호 : 02-515-9985 <br/>
            - 팩스번호 : 02-8600-2612 <br/>
            - 전자우편 : cs@watcha.net<br/>
            <br/>
            기타 개인정보에 관한 상담이 필요한 경우에는 정보통신부 산하 공공기관인 한국인터넷진흥원(KISA) 개인정보침 해신고센터 또는 경찰청 사이버테러대응센터로 문의하시기 바랍니다.<br/>
            [한국인터넷진흥원 개인정보침해신고센터]<br/>
            전화번호 : 국번없이 118<br/>
            홈페이지 주소 : http://privacy.kisa.or.kr [경찰청 사이버테러대응센터]<br/>
            전화번호 : 02-393-9112<br/>
            홈페이지 주소 : http://www.netan.go.kr [대검찰청 사이버범죄수사단]<br/>
            전화번호 : 02-3480-3751<br/>
            홈페이지 주소 : http://www.spo.go.kr<br/>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="modal-backdrop"></div>
</div>
    <script type="text/javascript">
      $(".content").css("backgroundImage", 'url(../image/background_image.png)');
      $(".app-download-wrapper a").on("click", function (e) { ga('send', 'event', 'App', 'Download') });

      $(".legal-privacy-button").on("click", function(e) {
        e.preventDefault();
        $(".legal-privacy").css("display", "block");
        $("body").css("overflowY", "hidden");
      });
      $(".legal-watcha-button").on("click", function(e) {
        e.preventDefault();
        $(".legal-watcha").css("display", "block");
        $("body").css("overflowY", "hidden");
      });
      $(".legal-dialog__close").on("click", function(e){
        e.preventDefault();
        $(".legal-element").css("display", "none");
        $("body").css("overflowY", "auto");
      });
    </script>
  </body>
</html>