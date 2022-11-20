<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2020/6/8
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: url(loginP.png) no-repeat;
            background-size:100% 100%;
            background-attachment: fixed;

        }

        .div {
            width: 400px;
            height: 500px;
            /* 实现整个框居中效果 */
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
            overflow: hidden;
        }

        .head-div {
            width: 100px;
            height: 100px;
            border: 1px solid #999;
            border-radius: 50%;
            margin: 0 auto 10px auto;
            background: url(loginP1.png) no-repeat;
            background-size: 100px 100px;
        }

        .sign-div {
            width: 400px;
            height: 300px;
            text-align: center;
            outline: none;
            border: 1px solid rgb(94, 92, 233);
            border-radius: 8px;
            background-color: rgba(172, 235, 243, .2);
            box-sizing: border-box;
        }

        .sign-div h1 {
            margin-bottom: 10px;
            color: rgb(29, 26, 26);
        }

        input {
            width: 250px;
            height: 44px;
            border: none;
            /* 元素周围的轮廓无效 */
            outline: none;
            /* 为元素指定的任何内边距和边框都将在已设定的宽度和高度内进行绘制 */
            box-sizing: border-box;
            display: block;
            padding: 0 16px;
        }

        .input-text {
            margin: 5px auto;
            border-radius: 16px;
        }

        .input-text:hover {
            border: 0.5px solid rgb(76, 76, 233);
            transition: 0.5s;
            border-radius: 4px;
        }

        .input-btn {
            margin: 30px auto 20px;
            border-radius: 44px;
            cursor: pointer;
            background-color: rgba(84, 175, 249, 0.8);
        }

        .input-btn:hover {
            color: #fff;
            font-size: 16px;
            border-radius: 4px;
            transition: 0.5s;
            background-color: rgba(10, 138, 243, 0.8);
        }

        .sign-div a {
            text-decoration: none;
            color: rgb(92, 61, 112);
            font-size: 14px;
            padding: 10px;
            transition: 0.8s;
            display: block;
        }

        a:hover {
            color: #FFF;
            background: rgba(0, 0, 0, .3);
            border-radius: 8px;
        }
    </style>
</head>

<body>
<div class="div">
    <div class="head-div"></div>
    <div class="sign-div">
        <form class="" action="servlet.EmpServlet" method="post">>
            <h1>登录</h1>
            <input class="input-text" type="text" name="username" placeholder="帐号">
            <input class="input-text" type="password" name="password" placeholder="密码">
            <input class="input-btn" type="submit" value="登录">
<%--            <a href="#">忘记密码?</a>--%>
        </form>
    </div>
</div>
</body>

</html>
