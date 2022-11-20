<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/20
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加兽医</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>

<div >
    <table class="table">
        <form action="servlet.VetServlet?purpose=addVet" method="post">
            <caption>
                <h1 class="h1">Add Vet</h1>
            </caption>
            <tr >
                <td>兽医名称</td>
                <td><input class="btn" type="text" name="vetName"></td>
            </tr>
            <tr >
                <td>专业特长</td>
                <td>
                    <input class="btn" type="text" name="vetSpec">
                </td>
            </tr>
            <tr >
                <td>
                    <input class="btn2" type="submit" value="sure"/>
        </form>
        </td>
        <td>
            <form action="servlet.VetServlet?purpose=allVet" method="post">
                <input class="btn2" type="submit" value="back"/>
            </form>
        </td>
        </tr>

    </table>
</div>
</body>
</html>
