<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 아이디체크처리 -->
<script>
	 alert("1");
</script>
<c:choose>
	<c:when test="${sessionScope.id==null}">
		<%
			session.setAttribute("id", request.getParameter("id"));
			response.sendRedirect("../index.jsp");
		%>

	</c:when>
	<c:otherwise>
		<%
		session.removeAttribute("id"); 
		response.sendRedirect("../index.jsp");
		%>
	</c:otherwise>
	
</c:choose>



