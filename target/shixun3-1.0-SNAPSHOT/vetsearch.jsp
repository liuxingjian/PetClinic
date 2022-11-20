<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/8
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>兽医信息查询</title>
<link href="allstyle.css" type="text/css" rel="styleSheet" >
</head>
<body>
    <div align="right">
        <table >
<%--            <form action="servlet.VetServlet?purpose=allVet" id="all" method="post"></form>--%>
            <form action="vetAdd.jsp" id="addVet" method="post"></form>
            <form action="servlet.VetServlet?purpose=selectVet" method="post">
                <tr >
                    <td>
                        <input class="btn" type="text" name="vetname" placeholder="name">
                    </td>
                    <td>
                        <input class="btn" type="text" name="vetspecialist" placeholder="specialty">
                    </td>
                    <td>
                        <input class="btn2" type="submit" value="search"/>
                    </td>
                    <td >
                        <input class="btn2" type="submit" form="addVet" value="addVet"/>
                    </td>
                </tr>
            </form>
        </table>
    </div>
    <div style="height: 60px">

    </div>
    <div align="center">
        <table class="table">
            <caption>
                <h1 class="h1">vetMessage</h1>
            </caption>
            <thead>
                <td>兽医名称</td>
                <td>专业特长</td>
                <td>操作</td>
            </thead>
            <c:forEach items="${list}" var="mess">
                <tr >
                    <td>${mess.vetName}</td>
                    <td>${mess.specName}</td>
                    <td>
                        <form action="servlet.VetServlet?purpose=delete" method="post">
                            <input type="hidden" name="vet" value="${mess.vetName}">
                            <input type="hidden" name="spec" value="${mess.specName}">
                            <input class="btn2" type="submit" value="删除">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>
