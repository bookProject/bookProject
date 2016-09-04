<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
<link rel="stylesheet" href="../css/comm.css" >
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<script type="text/javascript" src="../js/comm.js"></script>
</head>
<body>
  <ul id="dropdown1" class="dropdown-content">
    <li><a href="#!">one</a></li>
    <li><a href="#!">two</a></li>
    <li class="divider"></li>
    <li><a href="#!">three</a></li>
  </ul>
  <nav>
  	<div class="row">
	   <div class="nav-wrapper top">
  	   	 <div class="col s2">
	        <a href="#!" class="brand-logo"><i class="material-icons">cloud</i>Logo</a>
	     </div>
	     <div class="col s6">
  	       <input id="search" type="search" required>
	       <label for="search"><i class="material-icons">search</i></label>
	       <i class="material-icons">close</i>
	     </div>
	     <div class="col s4">
	       <ul class="right hide-on-med-and-down">
	         <li><a href="sass.html"><i class="material-icons">search</i></a></li>
	         <li><a href="badges.html"><i class="material-icons">view_module</i></a></li>
	         <li><a href="collapsible.html"><i class="material-icons">refresh</i></a></li>
	         <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Dropdown<i class="material-icons right">arrow_drop_down</i></a></li>
	       </ul>
	     </div>
	   </div>
	 </div>  
  </nav>
</body>
</html>
<!-- 
  <nav>
    <div class="nav-wrapper">
      <form>
        <div class="input-field">
          <input id="search" type="search" required>
          <label for="search"><i class="material-icons">search</i></label>
          <i class="material-icons">close</i>
        </div>
      </form>
    </div>
  </nav>
  -->
<!-- 
        <li>
          <div class="fixed-action-btn horizontal click-to-toggle" style="top: 10px; right: 24px;">
		    <a class="btn-floating btn-large red">
		      <i class="material-icons">menu</i>
		    </a>
		    <ul>
		      <li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
		      <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
		      <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
		      <li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
		    </ul>
		  </div>
		</li>
-->