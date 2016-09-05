<%@page import="rent.customer.CustomerDto"%>
<%@page import="rent.car.CarDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 아이디체크처리 -->
<jsp:useBean id="customerBean" class="rent.customer.CustomerBean"/>
<jsp:setProperty property="*" name="customerBean"/>
<jsp:useBean id="processDao" class="rent.customer.CustomerProcessDao"/>
<%CustomerDto dto=processDao.selectCustomerById(customerBean); %>
<c:set var="dto" value="<%=dto%>"/>
<c:choose>
	<c:when test="${sessionScope.cus_id==null}">
		<c:choose>
			<c:when test="${dto!=null}">
				<%
				session.setAttribute("cus_id",dto.getCus_id());
				response.sendRedirect("../index.jsp");
				%>
			</c:when>
			<c:otherwise>
			<%
			response.sendRedirect("../index.jsp?flag=logfail");
			%>
			</c:otherwise>
		</c:choose>
	</c:when>
	<c:otherwise>
		<%
		session.removeAttribute("cus_id"); 
		response.sendRedirect("../index.jsp?flag=logout");
		%>
	</c:otherwise>
</c:choose>



