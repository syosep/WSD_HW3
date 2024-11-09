<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Project</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container mt-5">
        <%@ include file="inc/header.jsp" %>

        <h1>환영합니다!</h1>
        <p>테스트 중</p>

        <ul>
            <li><a href="pages/list.jsp">게시판 보기</a></li>
            <li><a href="pages/write.jsp">새 글 작성</a></li>
            <li><a href="pages/form.html">폼 데이터 전송</a></li>
        </ul>

        <%@ include file="inc/footer.jsp" %>
    </div>
    <script src="js/scripts.js"></script>
</body>
</html>