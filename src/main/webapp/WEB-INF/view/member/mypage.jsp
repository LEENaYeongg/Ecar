<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Ecar</title>
<style type="text/css">
h2 {
   font-size: 40px;
   text-align: center;
   font-family: Monospace;
   border-bottom: 12px solid #dcf1fb;
}

table {
   width: 100%;
   border-collapse: collapse;
}

th, td {
   border: 3px solid #dedede;
   text-align: center;
   padding: 8px;
}

th {
   background-color: #c7ebfc;
   color: #000000;
}

td {
   background-color: #F2F2F2;
}

input[type=text], input[type=password], textarea {
   width: 100%;
}

caption {
   color: #111111;
   font-size: 20px;
   background-color: #FFFFFF;
}
.button {
   display: inline-block;
   min-width: 46px;
   height: 34px;
   line-height: 36px;
   font-size: 13px;
   color: var(- -skinCommentWriterText);
   border-radius: 6px;
   box-sizing: border-box;
   font-weight: 700;
   text-align: center;
   vertical-align: top;
   outline:0;
   border:0;
   cursor: pointer;
}

.BaseButton.size_default {
   min-width: 46px;
   height: 36px;
   margin-left: 10px;
   padding: 0 12px;
   font-size: 13px;
   line-height: 36px;
}
.size_comment {
   min-width: 46px;
   height: 30px;
   margin-left: 10px;
   padding: 0 12px;
   font-size: 10px;
   line-height: 36px;
}

.BaseButton--skinGray {
   border: 1px solid var(- -skinBaseButtonDefaultBorder);
   background: #d3effc57;
   color: var(- -skinBaseButtonDefaultColor);
}

.button--green {
   border: 0px solid var(- -skinBaseButtonDefaultBorder);
   background: rgba(3, 199, 90, 0.12);
   color: #009f47;
}

.BaseButton {
   display: inline-block;
   border-radius: 6px;
   box-sizing: border-box;
   font-weight: 700;
   text-align: center;
   vertical-align: top;
   outline: none;
   cursor: pointer;
   border: 0;
}

a.button {
   -webkit-appearance: button;
   -moz-appearance: button;
   appearance: button;
}

a {
   text-decoration: none
}

input.submitLink {
   background-color: transparent;
   border: none;
   text-decoration: none;
   cursor: pointer;
   outline: none;
}
</style>
</head>
<body>
   <center>
      <h2>??? ??????</h2>
      <table>
         <tr>
            <th>?????????</th>
            <td>${user.id}</td>
         </tr>
         <tr>
            <th>??????</th>
            <td>${user.name}</td>
         </tr>
         <tr>
            <th>?????????</th>
            <td>${user.email}</td>
         </tr>
         <tr>
            <th>??????</th>
            <td><c:if test="${user.loc == 1}" >???????????????</c:if>
               <c:if test="${user.loc == 2}">???????????????</c:if> <c:if
                  test="${user.loc == 3}">???????????????</c:if> <c:if test="${user.loc == 4}">???????????????</c:if>
               <c:if test="${user.loc == 5}">???????????????</c:if> <c:if
                  test="${user.loc == 6}">???????????????</c:if> <c:if test="${user.loc == 7}">???????????????</c:if>
               <c:if test="${user.loc == 8}">?????????????????????</c:if> <c:if
                  test="${user.loc == 9}">?????????</c:if> <c:if test="${user.loc == 10}">?????????</c:if>
               <c:if test="${user.loc == 11}">????????????</c:if> <c:if
                  test="${user.loc == 12}">????????????</c:if> <c:if
                  test="${user.loc == 13}">????????????</c:if> <c:if
                  test="${user.loc == 14}">????????????</c:if> <c:if
                  test="${user.loc == 15}">????????????</c:if> <c:if
                  test="${user.loc == 16}">????????????</c:if> <c:if
                  test="${user.loc == 17}">?????????????????????</c:if>
            </td>
         </tr>
      </table>

      <br> 
      <a href="../calendar/newCalendar.shop?id=${loginUser.id}" role="button"
      class="BaseButton BaseButton--skinGray size_default"> 
      <span class="BaseButton__txt">???????????????</span></a>
      
      <a href="update.shop?id=${loginUser.id}" role="button"
      class="BaseButton BaseButton--skinGray size_default"> 
      <span class="BaseButton__txt">????????????</span></a>
      
      <a href="password.shop" role="button"
      class="BaseButton BaseButton--skinGray size_default"> <span
      class="BaseButton__txt">??????????????????</span></a>
      
      <c:if test="${loginUser.id != 'admin' }">
      <a href="delete.shop?id=${loginUser.id}" role="button"
      class="BaseButton BaseButton--skinGray size_default"> <span
      class="BaseButton__txt">????????????</span></a>
      </c:if>
      
      <c:if test="${loginUser.id == 'admin' }">
      <a href="../admin/list.shop" role="button"
      class="BaseButton BaseButton--skinGray size_default"> <span
      class="BaseButton__txt">????????????</span></a>
      </c:if>
      
      <br>
   </center>
</body>
</html>