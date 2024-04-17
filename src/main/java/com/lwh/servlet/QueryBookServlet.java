/*
 * @Author: LWHao
 * @Date: 2024-04-16 20:02:27
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-16 20:05:40
 */
package com.lwh.servlet;

import com.lwh.bean.Book;
import com.lwh.dao.BookDAO;
import com.lwh.dao.impl.BookDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/queryBook")
public class QueryBookServlet extends HttpServlet{

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double minPrice = Double.parseDouble(request.getParameter("minPrice"));
        double maxPrice = Double.parseDouble(request.getParameter("maxPrice"));

        BookDAO bookDAO = new BookDAOImpl(); // Instantiate the BookDAO class

        List<Book> books = bookDAO.getBooksByPriceRange(minPrice, maxPrice);

        request.setAttribute("books", books);

        request.getRequestDispatcher("query_book.jsp").forward(request, response);

    }

}
