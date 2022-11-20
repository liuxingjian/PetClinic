
<%--
  Created by IntelliJ IDEA.
  User: Saiwei
  Date: 2022/6/4
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>search_name</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>
<div>
    <table class="table">
        <caption>
            <h1 class="h1">Clinic</h1>
        </caption>
        <tr>
            <td>name</td>
            <td>phone</td>
            <td>address</td>
            <td>dotime</td>
            <td>intro</td>
            <td>修改</td>
            <td>删除</td>
        </tr>
        <c:forEach items="${list}" var="mess">
            <tr>
                <td>${mess.name}</td>
                <td>${mess.phone}</td>
                <td>${mess.address}</td>
                <td>${mess.dotime}</td>
                <td>${mess.intro}</td>

                <form action="servlet.ClinicServlet?purpose=show" method="post">
                    <input type="hidden" name="name" value="${mess.name}">
                    <input type="hidden" name="phone" value="${mess.phone}">
                    <input type="hidden" name="address" value="${mess.address}">
                    <input type="hidden" name="dotime" value="${mess.dotime}">
                    <input type="hidden" name="intro" value="${mess.intro}">
                    <td><input type="submit" name="xiugai" value="修改"></td>
                </form>


                <form action="servlet.ClinicServlet?purpose=deleteclinic" method="post">
                    <input type="hidden" name="name" value="${mess.name}">
                    <input type="hidden" name="phone" value="${mess.phone}">
                    <input type="hidden" name="address" value="${mess.address}">
                    <input type="hidden" name="dotime" value="${mess.dotime}">
                    <input type="hidden" name="intro" value="${mess.intro}">
                    <td><input type="submit" name="submint" value="删除"></td>
                </form>
            </tr>
        </c:forEach>
    </table>
</div>
<div align="right">
    <form action="clinic/clinicsearch.jsp" method="post">
        <input type="submit" value="back">
    </form>
</div>
</body>
</html>
