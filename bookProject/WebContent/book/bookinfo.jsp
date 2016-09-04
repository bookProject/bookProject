<%@page import="book.wishlist.WishlistDto"%>
<%@page import="book.book.bookDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="bookDao" class="book.book.BookProcessDao" />
<% 
request.setCharacterEncoding("utf-8");
String mem_id = "admin";  //세션으로 처리 예정
int book_no = Integer.parseInt(request.getParameter("no"));
bookDto bookinfo = bookDao.getBookByNo(book_no);
%>    
<jsp:useBean id="wishDto" class="book.wishlist.WishlistDto"/>
<jsp:setProperty property="mem_id" name="wishDto" value="<%=mem_id %>"/>
<jsp:setProperty property="book_no" name="wishDto" value="<%=book_no %>"/>
<jsp:useBean id="wishDao" class="book.wishlist.WishlistProcessDao" />
<% WishlistDto wish_dto = wishDao.getWishByNo(wishDto); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
<link rel="stylesheet" type="text/css" href="../css/book.css">
<title>도서 상세 정보</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<script type="text/javascript" src="../js/book.js"></script>
<script type="text/javascript">
/*<!-- Modal Trigger -->*/
$(document).ready(function() {
$('.modal-trigger').leanModal();
$('#modal1').openModal();
$('#modal1').closeModal();
});
</script>
</head>
<body>
  <div class="row">
    <div class="col s12"><p/></div>
  </div>
<!-- book info start -->
  <c:set var="book" value="<%=bookinfo %>"/>
  <div class="row">
    <div class="col s2"><p/></div>
    <!-- cover image start -->
    <div class="col s3">
          <span class="z-depth-2"><img class="info-cover" src="${book.coverLargeUrl }"></span>
    </div>
    <!-- cover image end -->
    <!-- info start -->
    <div class="col s5">
      <p/>
      <div class="info-ctgr">국내도서><a href="${book.categoryId }">${book.c_desc }</a></div><br/>
      <div class="info-title">${book.title }
        <span class="wish-text2">
          <c:set var="wDto" value="<%=wish_dto %>"/>
          <c:choose>
            <c:when test="${wDto == null}">
              <span class="favorite" id="${book.no}">♥</span>			
            </c:when>
            <c:otherwise>
              <span class="favorite on" id="${book.no}">♥</span>
            </c:otherwise>
          </c:choose>
        </span>
      </div>
      <br/> 
      <div class="info-pub"><b>도서정보</b> &nbsp; ${book.publisher } 출판 |  ${book.pubDate } 출간 </div>
      <br/>  
      <table class="bordered">
        <thead>
          <tr></tr>
        </thead>
        <tbody>
          <tr>
            <td rowspan="2" class="table-center"><b class="tshadow"> &nbsp; 구 매 &nbsp; </b></td>
            <td class="cart">
                 <a class="waves-effect waves-light btn price buy on" id="${book.priceStandard }" name="1">
                 	<i class="material-icons right price" id="buy">done</i>
                   	 소장 &nbsp; &nbsp; <b><fmt:formatNumber value="${book.priceStandard }" type="currency" /></b>
                 </a>
            </td>
            <td rowspan="2" class="table-center cart">
              <a class="waves-effect waves-light btn-large binfo modal-trigger" href="#modal1"><i class="material-icons cart tshadow">shopping_cart</i></a>
            </td>
          </tr>
          <tr>
            <td class="cart"> 
                 <a class="waves-effect waves-light btn price rent" id="${book.priceEbook }"  name="2">
                 	<i class="material-icons right price" id="rent">done</i>
                   	대여 &nbsp; &nbsp; <b><fmt:formatNumber value="${book.priceEbook }" type="currency" /></b> (대여기간 : 3일)
                 </a>
            </td>
          </tr>
        </tbody>
      </table>
      <br/>
            <div class="star_rating">
			  <a href="#">★</a>
			  <a href="#">★</a>
			  <a href="#">★</a>
			  <a href="#">★</a>
			  <a href="#">★</a>
			  <b> &nbsp; 0.0점 (??명 참여)</b>
		    </div>
    </div>
    <!-- info end -->
    <div class="col s2"><p/></div>
  </div>
<!-- book info end -->	
	    
<!-- book more start -->
  <div class="row">
    <div class="col s2"><p/></div>
    <div class="col s8">
	    <ul class="collapsible" data-collapsible="expandable">
		    <li>
		      <div class="collapsible-header"><div class="icon-title tshadow"><i class="material-icons">description</i>| &nbsp; &nbsp; 줄거리</div></div>
		      <div class="collapsible-body"><p>${book.description }</p></div>
		    </li>
		    <li>
		      <div class="collapsible-header"><div class="icon-title tshadow"><i class="material-icons">recent_actors</i>| &nbsp; &nbsp; 저자 및 번역</div></div>
		      <div class="collapsible-body"><p>저자 &nbsp; ${book.author }<br/>번역 &nbsp; ${book.translator }</p></div>
		    </li>
		    <li>
		      <div class="collapsible-header"><div class="icon-title tshadow"><i class="material-icons">perm_identity</i>| &nbsp; &nbsp; 저자소개</div></div>
		      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
		    </li>
		    <li>
		      <div class="collapsible-header"><div class="icon-title tshadow"><i class="material-icons">mode_edit</i>| &nbsp; &nbsp; 후기글</div></div>
		      <div class="collapsible-body"><p>존잼 : - ]</p></div>
		    </li>
	    </ul>
    </div>
    <div class="col s2"><p/></div>
  </div>		    
<!-- book more end -->


<!-- Modal Structure -->
<div id="modal1" class="modal">
  <div class="modal-content">
     <h4>구매 내역을 확인해주세요.</h4>
     <p>${book.title }을(를) 구매하시겠습니까?</p>
  </div>
  <div class="modal-footer">
     <a class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>    
     <a class=" modal-action modal-close waves-effect waves-green btn-flat orderok">구매하기</a>
  </div>
</div>
</body>
</html>