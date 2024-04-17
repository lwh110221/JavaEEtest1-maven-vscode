/*
 * @Author: LWHao
 * @Date: 2024-04-16 20:05:54
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-17 12:19:55
 */
package com.lwh.servlet;

import com.lwh.dao.BookDAO;
import com.lwh.dao.impl.BookDAOImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/updateBookPrice")
public class UpdateBookPriceServlet extends HttpServlet {
    private BookDAO bookDAO = new BookDAOImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String bookid = request.getParameter("bookid");
        double newPrice = Double.parseDouble(request.getParameter("newPrice"));

        bookDAO.updateBookPrice(bookid, newPrice);

        response.sendRedirect("query_book.jsp");
    }
}
