<%--
  Created by IntelliJ IDEA.
  User: manda
  Date: 2023-11-20
  Time: 오후 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.jps_crud.BoardDAO, com.example.jps_crud.BoardVO"%>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Details</title>
</head>
<body>

<%
    String idStr = request.getParameter("id");
    if(idStr != null && !idStr.trim().isEmpty()) {
        try {
            int id = Integer.parseInt(idStr);
            BoardDAO boardDAO = new BoardDAO();
            BoardVO item = boardDAO.getBoard(id);

            if(item != null) {
                // Display the details of the item
%>
<h1>Details of Post ID: <%= id %></h1>
<table>

    <tr><td>Title:</td><td><%= item.getTitle() %></td></tr>
    <tr><td>Writer:</td><td><%= item.getWriter() %></td></tr>
    <tr><td>Content:</td><td><%= item.getContent() %></td></tr>

</table>
<%
            } else {
                System.out.println("<p>Item not found.</p>");
            }
        } catch (NumberFormatException e) {
            System.out.println("<p>Invalid ID format.</p>");
        }
    } else {
        System.out.println("<p>ID not provided.</p>");
    }
%>


</body>
</html>