<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
        request.setCharacterEncoding("UTF-8" );
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String content = request.getParameter("content");

        response.sendRedirect("list.jsp");