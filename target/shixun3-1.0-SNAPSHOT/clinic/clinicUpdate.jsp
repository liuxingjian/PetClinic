<%@ page import="Bean.Clinic" %><%--
  Created by IntelliJ IDEA.
  User: Saiwei
  Date: 2022/6/6
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="allstyle.css" type="text/css">
</head>
<body>
<table class="table">
    <%
        Clinic c= (Clinic) request.getAttribute("clinic");
    %>
    <form action="servlet.ClinicServlet?purpose=clinicupdate" method="post">
        <tr>
            <td>name:</td>
            <td><input class="btn" type="text" name="name" value=<%=c.getName()%>></td>
        </tr>
        <tr>
            <td>phone:</td>
            <td><input class="btn" type="text" name="phone" value=<%=c.getPhone()%>></td>
        </tr>
        <tr>
            <td>address</td>
            <td><input class="btn" type="text" name="address" value=<%=c.getAddress()%>></td>
        </tr>
        <tr>
            <td>dotime</td>
            <td><input class="btn" type="text" name="dotime" value=<%=c.getDotime()%>></td>
        </tr>
        <tr>
            <td>intro</td>
            <td><input class="btn" type="text" name="intro" value=<%=c.getIntro()%>></td>
        </tr>
        <tr>
            <td><input class="btn2" type="submit" value="提交"></td>
            <form action="clinicsearch.jsp" method="post">
                <td><input class="btn2" type="submit" value="返回"></td>
            </form>
        </tr>
    </form>
</table>
</body>
</html>
