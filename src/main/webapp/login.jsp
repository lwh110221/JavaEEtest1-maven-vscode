<!--
 * @Author: LWHao
 * @Date: 2024-04-17 11:40:36
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-17 12:12:02
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <style>
        h2 {
            text-align: center;
        }
        form {
            width: 300px;
            margin: 0 auto;
            background-color: antiquewhite;
        }
        div {
            margin-bottom: 10px;
        }
        label {
            display: inline-block;
            width: 80px;
            text-align: right;
        }
        input {
            width: 200px;
        }
        button {
            width: 100px;
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <h2>Login</h2>
    <form action="/demo_war/login" method="post">
        <div>
            <label for="stuno">学号：</label>
            <input type="text" id="stuno" name="stuno" required>
        </div>
        <div>
            <label for="stupassword">密码：</label>
            <input type="password" id="stupassword" name="stupassword" required>
        </div>
        <div>
            <button type="submit">登录</button>
        </div>
    </form>
</body>
</html>