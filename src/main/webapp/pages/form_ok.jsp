<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../inc/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>폼 데이터 결과</title>
</head>
<body>
<h1>폼 데이터 결과</h1>
<p><strong>이름:</strong> <%= request.getParameter("name") %></p>
<p><strong>이메일:</strong> <%= request.getParameter("email") %></p>
<p><strong>전화번호:</strong> <%= request.getParameter("phone") %></p>
<p><strong>주소:</strong> <%= request.getParameter("address") %></p>
<p><strong>메시지:</strong> <%= request.getParameter("message") %></p>

<a href="form.html">다시 작성하기</a>
</body>
</html>
<%@ include file="../inc/footer.jsp" %>