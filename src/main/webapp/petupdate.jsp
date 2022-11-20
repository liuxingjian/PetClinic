<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/10
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>更新宠物信息</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>

    <div >
        <table class="table">
            <caption>
                <h1 class="h1">Pet Update</h1>
            </caption>
            <c:forEach items="${petViewList}" var="mess">
            <form action="servlet.PetServlet?purpose=upda" method="post">
                <input type="hidden" name="petid" value="${mess.id}">
                <tr >
                    <td>宠物名称</td>
                    <td><input type="text" name="name" value="${mess.name}"></td>
                </tr>
                <tr >
                    <td>类型</td>
                    <td>
                        <select name="updateType">
                            <c:forEach items="${typeList}" var="tl">
                            <option <c:if test="${mess.type eq tl.type}">selected="selected"</c:if> value="${tl.type}">
                                    ${tl.type}
                            </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr >
                    <td>出生日期</td>
                    <td><input type="date" name="birthdate" value="${mess.birthDate}"></td>
                </tr>
                <tr >
                    <td>所有人名称</td>
                    <td><input type="text" name="ownername" value="${mess.ownerName}"></td>
                </tr>
            <tr >
                <td>
                    <input type="submit" value="修改">
            </form>
                </td>
                <td>
                    <form action="servlet.PetServlet?purpose=allPet" method="post">
                        <input type="submit" value="返回">
                    </form>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>
