<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/10
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>所有人信息界面</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>
    <div >
        <table class="table">
            <caption>
                <h1 class="h1">Owner Message</h1>
            </caption>
            <c:forEach items="${ownerList}" var="mess">
            <form action="servlet.PetOwnerServlet?purpose=upda" method="post">
                <input type="hidden" name="ownerid" value="${mess.id}">
            <tr >
                <td>所有人名称</td>
                <td><input type="text" name="name" value="${mess.name}"></td>
            </tr>
            <tr >
                <td>地址</td>
                <td><input type="text" name="address" value="${mess.address}"></td>
            </tr>
            <tr >
                <td>城市</td>
                <td><input type="text" name="city" value="${mess.city}"></td>
            </tr>
            <tr >
                <td>电话号码</td>
                <td><input type="text" name="telephone" value="${mess.telephone}"></td>
            </tr>
            <tr >
                <td>
                    <input class="btn2" type="submit" value="Upade">
            </form>
                </td>
                <td>
                    <form action="servlet.PetServlet?purpose=allPet" method="post">
                        <input class="btn2" type="submit" value="back">
                    </form>
                </td>
            </tr>
                <c:forEach items="${listFb}" var="info">
                    <tr class="res-mess">
                        <td colspan="2">${info.mess}</td>
                    </tr>
                </c:forEach>
            </c:forEach>
            <c:forEach items="${newMess}" var="mess">
            <form action="servlet.PetOwnerServlet?purpose=upda" method="post">
                <input type="hidden" name="ownerid" value="${mess.id}">
                <tr class="res-tr">
                    <td>所有人名称</td>
                    <td><input type="text" name="name" value="${mess.name}"></td>
                </tr>
                <tr class="res-tr">
                    <td>地址</td>
                    <td><input type="text" name="address" value="${mess.address}"></td>
                </tr>
                <tr class="res-tr">
                    <td>城市</td>
                    <td><input type="text" name="city" value="${mess.city}"></td>
                </tr>
                <tr class="res-tr">
                    <td>电话号码</td>
                    <td><input type="text" name="telephone" value="${mess.telephone}"></td>
                </tr>
                <tr class="tr03">
                    <td>
                        <input type="submit" value="submit">
            </form>
                </td>
                <td>
                    <form action="servlet.PetServlet?purpose=allPet" method="post">
                        <input type="submit" value="back">
                    </form>
                </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>
