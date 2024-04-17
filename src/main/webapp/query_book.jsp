<%@ page import="com.lwh.bean.Book" %>
<%@ page import="java.util.List" %>
<%--
  Author : luowenhao221
  Date: 2024/4/7
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.lwh.bean.Book" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>查询书籍</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .search-container {
            width: 80%;
            max-width: 800px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        input {
            width: 80%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="submit"] {
            width: 50%;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<a href="main.jsp">返回导航</a>
<div class="search-container">
    <h2>请输入价格区间查询书籍</h2>
    <form action="queryBook" method="post">
        最低价: <input type="number" name="minPrice" required><br>
        最高价: <input type="number" name="maxPrice" required><br>
        <input type="submit" value="查询">
    </form>

    <%-- 检查是否有查询结果 --%>
    <% if(request.getAttribute("books") != null && !((List<Book>)request.getAttribute("books")).isEmpty()){ %>
    <h2>查询结果：</h2>
    <table>
        <tr>
            <th>书籍ID</th>
            <th>书名</th>
            <th>价格</th>
            <th>修改价格</th>
        </tr>
        <% for(Book book : (List<Book>)request.getAttribute("books")){ %>
        <tr>
            <td><%= book.getBookid() %></td>
            <td><%= book.getBookname() %></td>
            <td><%= book.getBookprice() %></td>
            <td>
                <form action="updateBookPrice" method="post">
                    <input type="hidden" name="bookid" value="<%= book.getBookid() %>">
                    <label>
                        新价格:
                        <input type="number" name="newPrice" required>
                    </label>
                    <input type="submit" value="修改">
                </form>
            </td>
        </tr>
        <% } %>
    </table>
    <% } else if(request.getAttribute("books") != null && ((List<Book>)request.getAttribute("books")).isEmpty()){ %>
    <p>未找到符合条件的书籍。</p>
    <% } %>
</div>
</body>
</html>

