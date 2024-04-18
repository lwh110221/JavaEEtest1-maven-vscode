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
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #cbf1ff;
            margin: 0;
            padding: 20px;
        }

        .search-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            max-width: 800px;
            margin: auto;
        }

        h2 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th {
            background-color: #f8f8f8;
            padding: 10px;
            text-align: left;
        }

        td {
            padding: 10px;
            text-align: left;
        }

        input[type=number], input[type=submit] {
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        input[type=submit] {
            background-color: #5cb85c;
            color: white;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #4cae4c;
        }

        a {
            text-decoration: none;
            color: #5cb85c;
        }

        a:hover {
            text-decoration: underline;
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

