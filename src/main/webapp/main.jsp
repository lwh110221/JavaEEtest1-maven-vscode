<!--
 * @Author: LWHao
 * @Date: 2024-04-17 08:52:01
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-17 08:52:14
-->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lwh.bean.Student" %>
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
        .logining {
            position: fixed;
            right: 0;
            top: 0;
            background-color: #333;
            color: white;
            padding: 10px;
        }
        .logintext {
            text-align: left;

        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="add_book.jsp">添加图书</a>
        <a href="query_book.jsp">查询和修改图书</a>
        <a href="bookList.jsp">查询所有图书</a>
        <a href="logout">退出登录</a>
    </div>
    <div class="content">
        <h1>欢迎来到主页</h1>
        <p>使用上方导航栏进行操作</p>
    </div>
    <div class="logining">
        <%
            Student student = (Student) session.getAttribute("student");
            if (student != null) {
        %>
        <div class="logintext">
            当前用户:
            <p>姓名: <%= student.getStuname() %></p>
            <p>学号: <%= student.getStuno() %></p>
            <p>性别: <%= student.getStusex() %></p>
        </div>
        <%
            }
        %>
    </div>
</body>
</html>
