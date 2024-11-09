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

                const row = document.createElement("tr");

                const idCell = document.createElement("td");
                idCell.textContent = post.id;
                row.appendChild(idCell);

                const titleCell = document.createElement("td");
                const titleLink = document.createElement("a");
                titleLink.href = `view.jsp?id=${post.id}`;
                titleLink.textContent = post.title;
                titleCell.appendChild(titleLink);
                row.appendChild(titleCell);

                const authorCell = document.createElement("td");
                authorCell.textContent = post.author;
                row.appendChild(authorCell);

                const actionCell = document.createElement("td");
                const editLink = document.createElement("a");
                editLink.href = `edit.html?id=${post.id}`;
                editLink.textContent = "수정";
                actionCell.appendChild(editLink);

                const deleteButton = document.createElement("button");
                deleteButton.textContent = "삭제";
                deleteButton.onclick = () => deletePost(post.id);
                actionCell.appendChild(deleteButton);

                row.appendChild(actionCell);

                postList.appendChild(row);
            });

            console.log("Table HTML after insertion:", postList.innerHTML);
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