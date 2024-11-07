<%--
  Created by IntelliJ IDEA.
  User: sim-yosep
  Date: 2024. 11. 7.
  Time: 오전 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="c1" class="com.example.jspproject.Calculator" />
    <%="10+20 =" + c1.sum(10,20) %>
</body>
</html>
