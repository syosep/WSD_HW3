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
    <label>작성일: <input type="date" id="date" required></label><br>
    <label>카테고리: <input type="text" id="category" required></label><br>
    <button type="submit">저장</button>
</form>

<script>
    // localStorage에서 데이터 로드
    function loadPosts() {
        const data = localStorage.getItem("posts");
        return data ? JSON.parse(data) : [];
    }

    // localStorage에 데이터 저장
    function savePosts(posts) {
        localStorage.setItem("posts", JSON.stringify(posts));
        console.log("Saved posts:", posts);
    }

    // 게시글 추가 함수
    function addPost() {
        const title = document.getElementById("title").value;
        const author = document.getElementById("author").value;
        const content = document.getElementById("content").value;
        const date = document.getElementById("date").value;
        const category = document.getElementById("category").value;

        // 입력값 검증
        if (!title || !author || !content || !date || !category) {
            alert("모든 항목을 입력해주세요.");
            return;
        }

        let posts = loadPosts();
        const newId = posts.length ? posts[posts.length - 1].id + 1 : 1;

        // 새 게시글 추가
        posts.push({ id: newId, title, author, content, date, category });
        savePosts(posts);

        alert("게시글이 추가되었습니다.");
        window.location.href = "list.jsp"; // 목록 페이지로 이동
    }
</script>
</body>
</html>
<%@ include file="../inc/footer.jsp" %>