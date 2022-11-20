<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/11
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>增加新宠物</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>
    <div >
        <table class="table">
            <caption>
                <h1 class="h1">Add Pet</h1>
            </caption>
            <form action="servlet.PetServlet?purpose=insert" method="post">
                <tr>
                    <td>所有人名称</td>
                    <td>
                        <select name="ownerSt">
                            <c:forEach items="${ownerSelect}" var="owner">
                                <option value="${owner.name}">${owner.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr >
                    <td>宠物名称</td>
                    <td><input type="text" name="petname"></td>
                </tr>
                <tr >
                    <td>类型</td>
                    <td>
                        <select name="typeSt">
                            <c:forEach items="${typeSelect}" var="ts">
                                <option value="${ts.type}">${ts.type}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr >
                    <td>出生日期</td>
                    <td><input type="date" name="birthdate"></td>
                </tr>
                <tr>
                    <td>
                        <input class="btn2" type="submit" value="add">
            </form>
            </td>
            <td>
                <form action="servlet.PetServlet?purpose=allPet" method="post">
                    <input class="btn2" type="submit" value="back">
                </form>
            </td>
            </tr>
        </table>
    </div>
</body>
</html>
