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
System.out.println(book_no);
bookDto bookinfo = bookDao.getBookByNo(book_no);
%>    
<jsp:useBean id="wishDto" class="book.wishlist.WishlistDto"/>
<jsp:setProperty property="mem_id" name="wishDto" value="<%=mem_id %>"/>
<jsp:setProperty property="book_no" name="wishDto" value="<%=book_no %>"/>
<jsp:useBean id="wishDao" class="book.wishlist.WishlistProcessDao" />
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
      <div class="info-ctgr">국내도서><a href="#">${book.categoryId }</a></div><br/>
      <div class="info-title">${book.title }</div><br/> 
      <div class="info-pub"><b>도서정보</b> &nbsp; ${book.publisher } | ${book.pubDate }</div>
      <br/>  
      <table class="bordered">
        <thead>
          <tr></tr>
        </thead>
        <tbody>
          <tr>
            <td rowspan="2" class="table-center">구매</td>
            <td> &nbsp; 소장 &nbsp; &nbsp; <b><fmt:formatNumber value="${book.priceStandard }" type="currency" /></b></td>
          </tr>
          <tr>
            <td> &nbsp; 대여 &nbsp; &nbsp; <b><fmt:formatNumber value="${book.priceEbook }" type="currency" /></b> (대여기간 : 3일)</td>
          </tr>
        </tbody>
      </table>
      <br/>
      <% WishlistDto wish_dto = wishDao.getWishByNo(wishDto); %>
      <% if(wish_dto != null) System.out.println("t");
      else{
    	  System.out.println("f");
      }
      %>
      <c:choose>
        <c:when test="${wish_dto != null}">
        	TT
          <span class="favorite on" id="${list2.no}">♥</span>
        </c:when>
        <c:otherwise>
        FF
          <span class="favorite" id="${list2.no}">♥</span>			
        </c:otherwise>
      </c:choose> 
      <i class="material-icons">shopping_cart</i>
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
		      <div class="collapsible-header"><i class="material-icons">filter_drama</i>줄거리</div>
		      <div class="collapsible-body"><p>${book.description }</p></div>
		    </li>
		    <li>
		      <div class="collapsible-header"><i class="material-icons">place</i>저자 및 번역</div>
		      <div class="collapsible-body">
		        <p>저자 &nbsp; ${book.author }<br/>번역 &nbsp; ${book.translator }</p>
		      </div>
		    </li>
		    <li>
		      <div class="collapsible-header"><i class="material-icons">whatshot</i>저자소개</div>
		      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
		    </li>
		    <li>
		      <div class="collapsible-header"><i class="material-icons">place</i>후기글</div>
		      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
		    </li>
	    </ul>
    </div>
    <div class="col s2"><p/></div>
  </div>		    
<!-- book more end -->
</body>
</html>