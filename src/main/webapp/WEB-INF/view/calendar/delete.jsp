<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
    
<%
    request.setCharacterEncoding("utf-8");
    
    Calendar now = Calendar.getInstance();
    int year = now.get(Calendar.YEAR);
    int month = now.get(Calendar.MONTH)+1;
    int day = now.get(Calendar.DATE);
   
    String _year = request.getParameter("year");
    String _month = request.getParameter("month");
    String _day = request.getParameter("date");
   
    if(_year != null)
        year = Integer.parseInt(_year);
   
    if(_month != null)
        month = Integer.parseInt(_month);
   
    now.set(year, month-1, day);    //출력할 년도, 월로 설정
   
    year = now.get(Calendar.YEAR);    //변화된 년, 월
    month = now.get(Calendar.MONTH) + 1;
    day = now.get(Calendar.DATE);
   
    int end = now.getActualMaximum(Calendar.DAY_OF_MONTH);    //해당월의 마지막 날짜
    int w = now.get(Calendar.DAY_OF_WEEK);    //1~7(일~토)
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ecar</title>

<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
} /* 브라우저별 기본 여백 차이가 있기에 작성한다. */
body {
	font-size: 12pt;
	margin: 0;
}

td {
	font-size: 15pt;
}

table {
	width: 60%;
	height: 100px;
	margin: auto;
	text-align: center;
}
.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 300px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
	top:100px;}
	
.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #B9E2FA;
	width: 45%;
	border: 0;
	padding: 10px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}
</style>
</head>
<body>
<center>

<form:form modelAttribute="calendar" action="delete.shop" enctype="multipart/form-data" name="f">
	<input type="hidden" name="id" value="${param.id}">
<div class="form">
	<select name="year" onchange="sendIt()">
	<%for(int i=year-5; i<year; i++) { %>
    	<option value="<%=i%>" > <%=i%>년</option>
    <%} %>
    <option value="<%=year%>" selected="selected"><%=year%>년</option>
    <%for(int i=year+1; i<year+5; i++) { %>
    	<option value="<%=i%>" > <%=i%>년</option>
    <%} %>
</select>
                           
<select name="month" onchange="sendIt()">
	<% for(int i=1; i<=12; i++) {%>
		<option value="<%=i%>" <%=month==i?"selected='selected'":"" %>> <%=i%>월 </option>
	<%} %>
</select>

<select name="day" onchange="sendIt()">
	<% for(int i=1; i<=31; i++) {%>
		<option value="<%=i%>" <%=day==i?"selected='selected'":"" %>> <%=i%>일 </option>
	<%} %>
</select>
<br>
기록을 삭제하시겠습니까?
<br><br>

<button onclick="javascript:document.f.submit()">삭제</button>
</div>
</form:form>
</center>
</body>
</html>