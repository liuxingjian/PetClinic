<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean.Vet" %>
<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/9
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>兽医特长查询结果</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>
    <div >
        <table class="table">
            <caption>
                <h1 class="h1">Search Result</h1>
            </caption>
            <thead>
            <td>兽医名称</td>
            <td>专业特长</td>
            <td>操作</td>
            </thead>

            <c:forEach items="${list}" var="mess">
                <tr class="res-tr">
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
<div align="right">
    <form action="servlet.VetServlet?purpose=allVet" method="post">
       <input class="btn2" type="submit" value="back">
    </form>
</div>
</body>
</html>
