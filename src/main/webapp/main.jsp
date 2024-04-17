<!--
 * @Author: LWHao
 * @Date: 2024-04-17 08:52:01
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-17 08:52:14
-->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>lwh主页导航</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5e2ae;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
            margin-bottom: 20px;
        }
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .content {
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="add_book.jsp">添加图书</a>
        <a href="query_book.jsp">查询和修改图书</a>
    </div>
    <div class="content">
        <h1>欢迎来到主页</h1>
        <p>使用上方导航栏进行操作</p>
    </div>
</body>
</html>
