<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../inc/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>글 수정 확인</title>
</head>
<body>
<h1>수정된 글 정보</h1>
<p><strong>제목:</strong> <%= request.getParameter("title") %></p>
<p><strong>작성자:</strong> <%= request.getParameter("author") %></p>
<p><strong>내용:</strong> <%= request.getParameter("content") %></p>

<a href="list.jsp">목록으로 돌아가기</a>
</body>
</html>
<%@ include file="../inc/footer.jsp" %>