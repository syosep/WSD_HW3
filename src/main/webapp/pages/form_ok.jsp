<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String cname = request.getParameter("country");
    out.println("이름 : " + fname + " " + lname + "<br />");
    out.println("출신국 : " + cname + "<br />");
%>
</body>
</html>