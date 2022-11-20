<%@page import="java.util.ArrayList"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>主页面</title>
    </head>

    <%
        HttpSession session1=request.getSession();
        String userName= (String) session1.getAttribute("name");
        System.out.println(userName+"---");
    %>
    <frameset cols="18%,*" framespacing="0" border="no" frameborder="0">
        <frame src="http://localhost:8080/shixun3_war_exploded/main/left.jsp" name="left" scrolling="no">
        <frameset cols="82%,*" framespacing="0" border="no" frameborder="0">
            <frameset rows="10%,7%,*">
                <frame src="http://localhost:8080/shixun3_war_exploded/main/top/a.jsp" name="top" scrolling="no">
                <frame src="http://localhost:8080/shixun3_war_exploded/main/middle.jsp?userName=<%=userName%>" name="toop" scrolling="no">
<%--                bottem--%>
                <frame src="http://localhost:8080/shixun3_war_exploded/main/top/Personal_Sakura_Guide_Page-main/index.html" name="main" style="width: 100px; height: 100px; ">
            </frameset>
            <frameset cols="100%,*" framespacing="0" border="no" frameborder="0">
                <frame src="http://localhost:8080/shixun3_war_exploded/main/left.jsp" name="left" scrolling="no">
            </frameset>
        </frameset>
    </frameset>

    <body>
    </body>
</html>
