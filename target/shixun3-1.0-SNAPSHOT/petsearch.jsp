<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/9
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>宠物信息查询</title>
    <link href="allstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div align="right">
        <table>
            <tr>
                <form action="servlet.PetServlet?purpose=allPet" id="all" method="post"></form>
                <form action="servlet.PetServlet?purpose=petow" method="post">
                    <td><input class="btn" type="text" name="petname" placeholder="petname"></td>
                    <td><input class="btn" type="text" name="ownername" placeholder="ownername"></td>
                    <td><input class="btn2" type="submit" value="search"/></td>
                </form>
                <form action="servlet.PetServlet?purpose=addpet" method="post">
                        <td><input class="btn2" type="submit" value="addPet"></td>
                </form>
                    <form action="servlet.PetOwnerServlet?purpose=addperson" method="post">
                        <td><input class="btn2" type="submit" value="addOwner"></td>
                    </form>
            </tr>
        </table>

    </div>
<div style="height: 60px;"></div>
    <div align="center">
        <table class="table" >
            <caption>
                <h1 class="h1">All Pet</h1>
            </caption>
            <tr >
                <td>宠物名称</td>
                <td>所有人名称</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${petList}" var="mess">
                <tr class="res-tr">
                    <td><a href="servlet.PetServlet?petname=${mess.name}&purpose=see">${mess.name}</a></td>
                    <td><a href="servlet.PetOwnerServlet?ownername=${mess.ownerName}&purpose=see">${mess.ownerName}</a></td>
                    <td>
                        <form action="servlet.PetServlet?purpose=delete" method="post">
                            <input type="hidden" name="petName" value="${mess.name}">
                            <input type="hidden" name="ownerName" value="${mess.ownerName}">
                            <input class="btn2" type="submit" value="删除">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
