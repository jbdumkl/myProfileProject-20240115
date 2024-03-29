<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http:java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/board.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<title>## My Profile</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td align="center">
				<span class="title01">DEVELOPER MKL's PROFILE</span>
			</td>
		</tr>
		<tr>
			<td align="center">	
				<span class="title02">I'm MKL Lee, a developer who wants a development job. Please call me back.</span>
			</td>
		</tr>
		<tr>
			<td class="con_box" align="center">
				<table border="0" cellpadding="10" cellspacing="0" width="95%">
					<tr>
						<td>
							<table border="0" cellpadding="10" cellspacing="0" width="100%">
								<tr>
									<th class="btitle">번호</th>
									<th class="btitle">아이디</th>
									<th class="btitle">이름</th>
									<th class="btitle" width="50%">글제목</th>
									<th class="btitle">등록일</th>
								</tr>
								<c:forEach items="${list}" var="boardDto">
								<tr>
									<td class="bcontent" align="center">${boardDto.qbnum }</td>
									<td class="bcontent" align="center">${boardDto.qbmid }</td>
									<td class="bcontent" align="center">${boardDto.qbmname }</td>
									<td class="bcontent">
										<a href="contentview?qbnum"=${boardDto.qbnum}">${boardDto.qbmnum }</a>
									<td class="bcontent" align="center">
										<c:out value="${fn:substring(boardDto.qbdate,0,10)}" />
									</td>
								</tr>
								</c:forEach>
								<tr>
									<td colspan="5" align="right">
										<input class="con_btn01" type="button" value="글쓰기" onclick="javascript:window.location.href='writeForm'">
									</td>
								
							</table>
					
					</tr>
				</table>
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>