<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../inc/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
    <link rel="stylesheet" href="../css/styles.css">
    <script>
        function loadPosts() {
            const data = localStorage.getItem("posts");
            if (data) {
                const posts = JSON.parse(data);
                console.log("Loaded posts from localStorage:", posts);
                return posts;
            }
            return [];
        }

        function savePosts(posts) {
            localStorage.setItem("posts", JSON.stringify(posts));
            console.log("Saved posts:", posts);
        }

        function initializePosts() {
            if (!localStorage.getItem("posts")) {
                const initialPosts = [
                    { id: 1, title: "첫 번째 글", author: "작성자1", content: "첫 번째 내용입니다." },
                    { id: 2, title: "두 번째 글", author: "작성자2", content: "두 번째 내용입니다." }
                ];
                savePosts(initialPosts);
            }
        }

        function displayPosts() {
            const posts = loadPosts();
            const postList = document.getElementById("postList");
            postList.innerHTML = "";

            posts.forEach(post => {
                console.log("Post ID:", post.id, "Title:", post.title, "Author:", post.author);
                postList.innerHTML += `
                    <tr>
                        <td>${post.id}</td>
                        <td><a href="view.jsp?id=${post.id}">${post.title}</a></td>
                        <td>${post.author}</td>
                        <td>
                            <a href="edit.html?id=${post.id}">수정</a>
                            <button onclick="deletePost(${post.id})">삭제</button>
                        </td>
                    </tr>
                `;
            });

            console.log("Table HTML:", postList.innerHTML);
        }

        function deletePost(id) {
            let posts = loadPosts();
            posts = posts.filter(post => post.id !== id);
            savePosts(posts);
            displayPosts();
        }

        window.onload = function() {
            initializePosts();
            displayPosts();
        };
    </script>
</head>
<body>
<h1>게시판 목록</h1>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작업</th>
    </tr>
    </thead>
    <tbody id="postList"></tbody>
</table>

<a href="write.jsp">새 글 작성</a>
</body>
</html>
<%@ include file="../inc/footer.jsp" %>