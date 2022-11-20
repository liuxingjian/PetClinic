<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/11
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>增加新客户</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>
    <div>
        <table class="table">
            <caption>
                <h1 class="h1">Add Owner</h1>
            </caption>
            <form action="servlet.PetOwnerServlet?purpose=insert" method="post">
                <tr>
                    <td>所有人名称</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>地址</td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td>城市</td>
                    <td><input type="text" name="city"></td>
                </tr>
                <tr>
                    <td>电话号码</td>
                    <td><input type="text" name="telephone"></td>
                </tr>
                <tr>
                    <td>
                        <input class="btn2" type="submit" value="add"/>
                    </td>
            </form>
            <td>
                <form action="servlet.PetServlet?purpose=allPet" method="post">
                    <input class="btn2" type="submit" value="返回"/>
                </form>
            </td>
            </tr>
        </table>
    </div>
</body>
</html>
