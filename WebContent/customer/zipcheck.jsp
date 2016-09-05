<%@page import="java.util.List"%>
<%@page import="rent.customer.ZiptabDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="customerProcess" class="rent.customer.CustomerProcessDao"/>
<%ArrayList<ZiptabDto> list =(ArrayList)customerProcess.zipcodeRead(request.getParameter("area3")); %>
<%int i=0; %>
{"zip":
[
<c:forEach var="l" items="<%=list %>" >
	<%i++; %>
	{"zipcode":"${l.zipcode}","area1":"${l.area1}","area2":"${l.area2}","area3":"${l.area3}","area4":"${l.area4}"}<%if(list.size()>i){out.print(",");} %>
</c:forEach>
]
}