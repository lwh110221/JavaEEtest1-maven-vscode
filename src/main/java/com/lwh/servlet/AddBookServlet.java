/*
 * @Author: LWHao
 * @Date: 2024-04-16 19:56:37
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-16 19:58:35
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


@WebServlet("/addBook")
public class AddBookServlet extends HttpServlet{
    private BookDAO bookDAO = new BookDAOImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookname = new String(request.getParameter("bookname").getBytes("ISO-8859-1"), "UTF-8");
        double bookprice = Double.parseDouble(request.getParameter("bookprice"));


        Book book = new Book();
        book.setBookname(bookname);
        book.setBookprice(bookprice);

        bookDAO.addBook(book);

        response.sendRedirect("add_book.jsp");

    }
}
