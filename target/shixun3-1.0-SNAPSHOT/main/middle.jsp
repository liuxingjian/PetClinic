
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .top-bar {
                width: 100%;
                height: 50px;
                margin: 0;
                display: flex;
            }
            .box-top {
                width: 100%;
                min-width: 1350px;
                background-color: lightgray;
                padding: 20px;
                /*border-bottom-left-radius: 8px;*/
                /*border-bottom-right-radius: 8px;*/
            }
            .box-top-right{
            }
            .top-ui {
                width: 100%;
                min-width: 800px;
                height: 50px;
                list-style: none;
                margin: 0;
                padding: 0;
            }
            .top-ui li{
                width:8%;
                min-width: 50px;
                margin:-5px 50px 0 70px;
                float: left;
                text-align: center;
                display: block;
            }
            .top-ui a{
                color: black;
                text-decoration: none;//下划线;
            }
            .top-ui a:hover{
                color: white;
            }
            .top-ui img{
                width: 30px;
                height: 30px;
                border-radius: 30px;
                bottom: 1000px;
            }
        </style>
    </head>
    <body >
        <%
            String userName=request.getParameter("userName");
            System.out.println(userName);
        %>
        <div class="top-bar">
            <div class="box-top">
                <ul class="top-ui">
                    <li>
                        <a href="../servlet.VetServlet?purpose=allVet" target="main">兽医信息管理</a>
                    </li>
                    <li>
                        <a href="../servlet.PetServlet?purpose=allPet" target="main">宠物信息管理</a>
                    </li>
                    <li>
                        <a href="../clinic/clinicsearch.jsp" target="main">诊所信息管理</a>
                    </li>
                    <li>
                        <a href="../servlet.QuitServlet" target="_top">退出</a>
                    </li>
                    <li>
                        <img  class="sparkle spin" src="../clinic/img/person_1.jpg" title="<%=userName%>" >
                    </li>
                </ul>
            </div>
        </div>
  </body>
</html>


