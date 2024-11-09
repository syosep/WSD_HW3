<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../inc/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시글 상세 정보</title>
</head>
<body>
<h1>게시글 상세 정보</h1>
<div id="postDetails">
</div>
<a href="list.jsp">목록으로 돌아가기</a>

<script>
    const urlParams = new URLSearchParams(window.location.search);
    const postId = parseInt(urlParams.get('id'));

    console.log("Retrieved postId from URL:", postId);

    function loadPosts() {
        const data = localStorage.getItem("posts");
        const posts = data ? JSON.parse(data) : [];
        console.log("Loaded posts from localStorage:", posts);
        return posts;
    }

    function displayPostDetails() {
        const posts = loadPosts();
        const post = posts.find(p => p.id === postId);

        console.log("Retrieved post:", post);

        if (post) {
            document.getElementById("postDetails").innerHTML = `
                    <p><strong>제목:</strong> ${post.title}</p>
                    <p><strong>작성자:</strong> ${post.author}</p>
                    <p><strong>내용:</strong> ${post.content}</p>
                `;
        } else {
            document.getElementById("postDetails").innerHTML = "<p>해당 게시글을 찾을 수 없습니다.</p>";
        }
    }

    window.onload = displayPostDetails;
</script>
</body>
</html>
<%@ include file="../inc/footer.jsp" %>