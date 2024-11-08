<%--
  Created by IntelliJ IDEA.
  User: sim-yosep
  Date: 2024. 11. 7.
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../css/styles.css">
<script src="../js/scripts.js"></script>
<%@ include file="../inc/header.jsp" %>
<html>
<head>
    <title>게시판 목록</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">게시판 목록</h1>
        <a href="write.html" class="btn btn-primary mb-3">새글 작성</a>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>테스트 1</td>
                    <td>테스터 1</td>
                    <td>2024-11-07</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>테스트 2</td>
                    <td>테스터 2</td>
                    <td>2024-11-07</td>
                </tr>
            </tbody>
        </table>
    </div>
    <%@ include file="../inc/footer.jsp" %>
</body>
</html>
