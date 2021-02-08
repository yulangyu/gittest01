<%--
  Created by IntelliJ IDEA.
  User: 10237
  Date: 2021/2/6
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>添加学生</title>
    <base href="<%= basePath%>" />
</head>
<body>
<div align="center">
    <img src="images/p3.jpg">
</div>
<form action="student/add.do" method="post">
<table align="center">
    <tr>
        <td>姓名</td>
        <td><input type="text" name="name"></td>
    </tr>
    <tr>
        <td>年龄</td>
        <td><input type="text" name="age"> </td>
    </tr>
    <tr>
        <td></td>
        <td align="center">
            <input type="submit" value="注册"> </td>
    </tr>
</table>
</form>
</body>
</html>
