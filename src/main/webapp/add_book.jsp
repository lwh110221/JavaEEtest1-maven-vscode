<!--
 * @Author: LWHao
 * @Date: 2024-04-16 20:09:04
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-16 23:03:40
-->
<%--
  Created by IntelliJ IDEA.
  Author : luowenhao221
  Date: 2024/4/7
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加</title>
    <style>
        h1 {
            /*    固定顶部并居中*/
            position: fixed;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            color: #333;
            font-family: Arial, sans-serif;
            padding-top: 20px;


        }
        form {
            width: 300px;
            margin: 0 auto;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        input {
            width: 100%;
            margin: 10px 0;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 8px;
            border: none;
            border-radius: 3px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        body{
            background-image: linear-gradient(to right, #f5e2ae, #f9cb28);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .main {
            width: 350px;
        }
    </style>
</head>
<body>
<h1>添加图书</h1>
<div class="main">
    <a href="main.jsp">返回导航</a>
    <form action="addBook" accept-charset="UTF-8" method="post">
        书名: <input type="text" name="bookname"><br>
        价格: <input type="number" step="0.01" name="bookprice"><br>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>

