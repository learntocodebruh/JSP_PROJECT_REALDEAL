<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %><%--
  Created by IntelliJ IDEA.
  User: manda
  Date: 2023-11-17
  Time: 오후 4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<form method = "post" action = "fileform_ok.jsp" enctype = "multipart/form-data">


    이미지를 선택하세요: <input type = "file" name = "img1" />

    <input type = "submit" value = "upload" />

</form>



</body>
</html>

