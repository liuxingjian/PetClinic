<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/9
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>宠物信息查询结果</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>
    <div align="center">
        <table class="table">
            <caption>
                <h1 class="h1">Search Result</h1>
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
                            <input class="btn" type="submit" value="删除">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
<div align="right" >
    <form action="servlet.PetServlet?purpose=allPet" method="post">
        <td class="btn" ><input type="submit" value="back"></td>
    </form>
</div>
</body>
</html>
