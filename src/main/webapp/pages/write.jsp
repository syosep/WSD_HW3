<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../inc/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>새 글 작성</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1>새 글 작성</h1>
    <%
        request.setCharacterEncoding("UTF-8");
    %>
    <form action="write_ok.jsp" method="post" class="mt-4">
        <div class="form-group">
            <label for="title">제목:</label>
            <input type="text" class="form-control" id="title" name="title" required>
        </div>
        <div class="form-group">
            <label for="author">작성자:</label>
            <input type="text" class="form-control" id="author" name="author" required>
        </div>
        <div class="form-group">
            <label for="content">내용:</label>
            <textarea class="form-control" id="content" name="content" rows="5" required></textarea>
        </div>
        <button type="submit" class="btn btn-success">저장</button>
        <a href="list.jsp" class="btn btn-secondary">취소</a>
    </form>
</div>
<%@ include file="../inc/footer.jsp" %>
</body>
</html>