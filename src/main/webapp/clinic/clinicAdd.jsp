<%--
  Created by IntelliJ IDEA.
  User: Saiwei
  Date: 2022/6/4
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add</title>
    <link rel="stylesheet" href="../allstyle.css" type="text/css">
</head>
<body>
<table class="table">
    <caption>
        <h1 class="h1">Add-Clinic</h1>
    </caption>
    <form action="../servlet.ClinicServlet?purpose=addclinic" method="post">
        <tr>
            <td>name:</td>
            <td><input type="text" class="btn" name="name"> </td>
        </tr>
        <tr>
            <td>phone:</td>
            <td><input type="text" class="btn" name="phone"></td>
        </tr>
        <tr>
            <td>address:</td>
            <td><input type="text" class="btn" name="address"></td>
        </tr>
        <tr>
            <td>dotime:</td>
            <td><input type="text" class="btn" name="dotime"></td>
        </tr>
        <tr>
            <td>intro</td>
            <td><input type="text" class="btn" name="intro"></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"></td>
            <form action="clinicsearch.jsp" method="post">
                <td><input type="submit" value="返回"></td>
            </form>
        </tr>
    </form>
</table>
</body>
</html>
