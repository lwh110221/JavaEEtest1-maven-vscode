<%--
  Created by IntelliJ IDEA.
  Author : luowenhao221
  Date: 2024/4/24
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>模糊查询图书</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            background-color: #cbf1ff;
        }
        input[type="text"] {
            padding: 5px;
            border-radius: 10px;
            border: 1px solid #ccc;
        }
        .high-price {
            background-color: yellow;
        }

        table {
            width: 100%;
            border: 1px solid #000;
        }
        form{
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #000;
            text-align: center;
        }
        a{
            text-decoration: none;
            color: #a4ee20;
            font-weight: bold;
            font-size: large;
        }
        submit{
            padding: 5px;
            border-radius: 10px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>

<h1>图书列表</h1>
<div>
    <a href="main.jsp">返回导航</a>
</div>
<form action="queryAllBook" method="post">
    <label for="bookName">图书名称：</label>
    <input type="text" id="bookName" name="bookName">
    <input type="submit" value="查询">
</form>

<table>
    <tr>
        <th>ID</th>
        <th>名称</th>
        <th>价格</th>
    </tr>
    <c:forEach var="book" items="${books}">
        <tr class="${book.bookprice > 50 ? 'high-price' : ''}">
            <td>${book.bookid}</td>
            <td>${book.bookname}</td>
            <td>${book.bookprice}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>