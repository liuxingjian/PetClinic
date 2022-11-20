<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/11
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>宠物病例</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>
    <div align="center">
        <table class="table">
            <caption>
                <h3 class="h1">Pet-Owner</h3>
            </caption>
            <form action="" method="post">
                <c:forEach items="${visitOwner}" var="mess">
                    <tr >
                        <td colspan="2"><input type="text" name="name" value="${mess.name}" disabled></td>
                    </tr>
                    <tr colspan="2">
                        <td><input type="text" name="ownerName" value="${mess.ownerName}" disabled></td>
                    </tr>
                </c:forEach>
            </form>
        </table>

        <table class="table">
            <caption>
                <h1 class="h1">Pet-Visit</h1>
            </caption>
            <tr >
                <td>诊断时间</td>
                <td>备注</td>
            </tr>
            <c:forEach items="${listVisit}" var="visit">
            <tr >
                <td>${visit.visitDate}</td>
                <td>${visit.description}</td>
            </tr>
            </c:forEach>
            <c:forEach items="${listFb}" var="info">
            <tr >
                <td colspan="2">${info.mess}</td>
            </tr>
            </c:forEach>
            <tr >
                <form action="servlet.PetServlet?purpose=allPet" method="post">
                    <td colspan="2"><input class="btn" type="submit" value="返回"></td>
                </form>
            </tr>
        </table>
    </div>

</body>
</html>
