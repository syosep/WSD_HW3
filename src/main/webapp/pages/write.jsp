<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../inc/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>새 글 작성</title>
</head>
<body>
<h1>새 글 작성</h1>
<form onsubmit="event.preventDefault(); addPost();">
    <label>제목: <input type="text" id="title" required></label><br>
    <label>작성자: <input type="text" id="author" required></label><br>
    <label>내용: <textarea id="content" required></textarea></label><br>
    <button type="submit">저장</button>
</form>

<script>
    function addPost() {
        const title = document.getElementById("title").value;
        const author = document.getElementById("author").value;
        const content = document.getElementById("content").value;
        const newId = posts.length ? posts[posts.length - 1].id + 1 : 1;
        posts.push({ id: newId, title, author, content });
        alert("게시글이 추가되었습니다.");
        window.location.href = "list.jsp";
    }
</script>
</body>
</html>
<%@ include file="../inc/footer.jsp" %>