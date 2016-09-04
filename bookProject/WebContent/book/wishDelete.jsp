<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
String mem_id = "admin";  //세션으로 처리 예정
int book_no = Integer.parseInt(request.getParameter("no"));
%>
<jsp:useBean id="wishDto" class="book.wishlist.WishlistDto"/>
<jsp:setProperty property="mem_id" name="wishDto" value="<%=mem_id %>"/>
<jsp:setProperty property="book_no" name="wishDto" value="<%=book_no %>"/>
<jsp:useBean id="wishDao" class="book.wishlist.WishlistProcessDao" />
<%
boolean b = wishDao.deleteWish(wishDto);
%>        
{"result":"<%=b %>"}
