<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"dd6f649abc","applicationID":"1592190","transactionName":"JQkLQxYMW1xWQBYNDAsDSl4KB1JI","queueTime":0,"applicationTime":37,"agent":""}</script>
<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o||e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e,n){function r(){}function o(t,e,n){return function(){return i(t,[(new Date).getTime()].concat(u(arguments)),e?null:this,n),e?void 0:this}}var i=t("handle"),a=t(2),u=t(3),c=t("ee").get("tracer"),f=NREUM;"undefined"==typeof window.newrelic&&(newrelic=f);var s=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit"],p="api-",l=p+"ixn-";a(s,function(t,e){f[e]=o(p+e,!0,"api")}),f.addPageAction=o(p+"addPageAction",!0),e.exports=newrelic,f.interaction=function(){return(new r).get()};var d=r.prototype={createTracer:function(t,e){var n={},r=this,o="function"==typeof e;return i(l+"tracer",[Date.now(),t,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[Date.now(),r,o],n),o)try{return e.apply(this,arguments)}finally{c.emit("fn-end",[Date.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){d[e]=o(l+e)}),newrelic.noticeError=function(t){"string"==typeof t&&(t=new Error(t)),i("err",[t,(new Date).getTime()])}},{}],2:[function(t,e,n){function r(t,e){var n=[],r="",i=0;for(r in t)o.call(t,r)&&(n[i]=e(r,t[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],3:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(o<0?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=r},{}],ee:[function(t,e,n){function r(){}function o(t){function e(t){return t&&t instanceof r?t:t?u(t,a,i):i()}function n(n,r,o){t&&t(n,r,o);for(var i=e(o),a=l(n),u=a.length,c=0;c<u;c++)a[c].apply(i,r);var s=f[m[n]];return s&&s.push([w,n,r,i]),i}function p(t,e){g[t]=l(t).concat(e)}function l(t){return g[t]||[]}function d(t){return s[t]=s[t]||o(n)}function v(t,e){c(t,function(t,n){e=e||"feature",m[n]=e,e in f||(f[e]=[])})}var g={},m={},w={on:p,emit:n,get:d,listeners:l,context:e,buffer:v};return w}function i(){return new r}var a="nr@context",u=t("gos"),c=t(2),f={},s={},p=e.exports=o();p.backlog=f},{}],gos:[function(t,e,n){function r(t,e,n){if(o.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[e]=r,r}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){o.buffer([t],r),o.emit(t,e,n)}var o=t("ee").get("handle");e.exports=r,r.ee=o},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!h++){var t=y.info=NREUM.info,e=s.getElementsByTagName("script")[0];if(t&&t.licenseKey&&t.applicationID&&e){c(m,function(e,n){t[e]||(t[e]=n)});var n="https"===g.split(":")[0]||t.sslForHttp;y.proto=n?"https://":"http://",u("mark",["onload",a()],null,"api");var r=s.createElement("script");r.src=y.proto+t.agent,e.parentNode.insertBefore(r,e)}}}function o(){"complete"===s.readyState&&i()}function i(){u("mark",["domContent",a()],null,"api")}function a(){return(new Date).getTime()}var u=t("handle"),c=t(2),f=window,s=f.document,p="addEventListener",l="attachEvent",d=f.XMLHttpRequest,v=d&&d.prototype;NREUM.o={ST:setTimeout,CT:clearTimeout,XHR:d,REQ:f.Request,EV:f.Event,PR:f.Promise,MO:f.MutationObserver},t(1);var g=""+location,m={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-974.min.js"},w=d&&v&&v[p]&&!/CriOS/.test(navigator.userAgent),y=e.exports={offset:a(),origin:g,features:{},xhrWrappable:w};s[p]?(s[p]("DOMContentLoaded",i,!1),f[p]("load",r,!1)):(s[l]("onreadystatechange",o),f[l]("onload",r)),u("mark",["firstbyte",a()],null,"api");var h=0},{}]},{},["loader"]);</script>
    <!-- 아이콘 -->
    <link href="../image/bookshelf.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
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
<script type="text/javascript">
$(document).ready(function(){
	$('.datepicker').pickadate({
		dateFormat: 'yy-mm-dd',
		selectMonths: true, // Creates a dropdown to control month
	    selectYears: 15
	    
	  });

});


</script>
<script type="text/javascript" src="../js/login.js"></script>

<style type="text/css">
@-moz-keyframes ani_fadein { from { opacity: 0; }  to { } }
@-webkit-keyframes ani_fadein { from { opacity: 0; }  to { } }

.fadein { -webkit-animation: ani_fadein 1.5s;  -moz-animation: ani_fadein 1.5s;}

.input-field input[type=text]:focus + label {
     color: #f1f8e9;
   }

.input-field input[type=text]:focus {
    border-bottom: 1px solid #f1f8e9;
    box-shadow: 0 1px 0 0 #f1f8e9;
   }

.input-field input[type=password]:focus + label {
     color: #f1f8e9;
   }
.input-field input[type=password]:focus {
    border-bottom: 1px solid #f1f8e9;
    box-shadow: 0 1px 0 0 #f1f8e9;
   }
body {
	color: white;
}


</style>
  </head>
  
 
  <body class="intro">
    <div id="contents" class="fadein">
      <div class="bg"></div>
      <div class="bg-alpha"></div>
      <div class="content">
        <div class="bg-alpha inner"></div>
        <div class="content-wrapper">
          <img class="logo" src="https://d12hfz37g51hrt.cloudfront.net/assets/intro/intro_watcha_logo-702a3b4773fded9c9831132f6f875a60.png" alt="로고" /><br /><br />
          
          <!-- 가운데 로고 -->
           	<div class="row">
         	<form action="registerproc.jsp" name="regFrm" method="post" onsubmit="return check()">
			 
			 <!-- 아이디 -->
			 <div class="input-field col s6">
          	 <input id="id" type="text" class="validate" name="id">
         	 <label for="id">아이디</label>
       		 </div>
			 <div class="input-field col s6">
          	 <input id="pwd" type="password" class="validate" name="pwd">
          	 <label for="pwd">비밀번호</label>
        	 </div>
			 <div class="input-field col s6">
          	 <input id="tel" type="text" class="validate" name="tel">
         	 <label for="tel">전화번호</label>
       		 </div>
       		 <div class="input-field col s6">
       		<input type="date" class="datepicker" id="birth" name="birth">
       		<label for="birth">생년월일</label>
       		</div>
       		<br>
       		 <button class="btn waves-effect waves-light N/A transparent z-depth-1" type="submit" name="action">회원가입
    		<i class="material-icons right">send</i>
 			 </button>
			</form>
            </div>
          </div>
        </div>
      </div>
      <div class="left-bottom">
        
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