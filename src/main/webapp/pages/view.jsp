<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../inc/header.jsp" %>
<html>
<head>
    <title>게시글 보기</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1>게시글 보기</h1>
        <div class="mb-4">
            <p><strong>제목:</strong> <%= request.getParameter("title") %></p>
            <p><strong>작성자:</strong> <%= request.getParameter("author") %></p>
            <p><strong>내용:</strong> <%= request.getParameter("content") %></p>
        </div>
        <a href="edit.html" class="btn btn-warning">수정</a>
        <a href="delete_ok.jsp" class="btn btn-danger">삭제</a>
        <a href="list.jsp" class="btn btn-secondary">목록으로</a>
    </div>
    <%@ include file="../inc/footer.jsp" %>
</body>
</html>
