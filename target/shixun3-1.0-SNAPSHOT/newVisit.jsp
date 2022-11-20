<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/11
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>增加新的宠物问诊记录</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>
    <div >
        <table class="table" >
            <caption>
                <h1 class="h1">New Visit</h1>
            </caption>
            <form action="servlet.PetVisitServlet?purpose=addVisit" id="change" method="post">
                <c:forEach items="${someMess}" var="ow">
                <tr >
                    <td>宠物名称</td>
                    <td>
                        <input type="text" name="petName" value="${ow.name}" readonly>
                    </td>
                </tr>
                <tr >
                    <td>所有人名称</td>
                    <td>
                        <input type="text" name="ownerName" value="${ow.ownerName}" readonly>
                    </td>
                </tr>
                <tr >
                    <td>类型</td>
                    <td>
                        <input type="text" name="type" value="${ow.type}" readonly>
                    </td>
                </tr>
                <tr>
                    <td>问诊日期</td>
                    <td><input type="date" name="birth_date"></td>
                </tr>
                <tr>
                    <td>描述</td>
                    <td><textarea name="description"></textarea></td>
                </tr>
                </c:forEach>
            </form>
            <tr>
                <td>
                    <input class="btn2" type="submit" form="change" value="add">
                </td>
                <td>
                    <form action="servlet.PetServlet?purpose=allPet">
                        <input class="btn2" type="submit" value="back">
                    </form>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input class="btn2" type="reset" form="change" value="clear">
                </td>
            </tr>
        </table>
    </div>

</body>
</html>
