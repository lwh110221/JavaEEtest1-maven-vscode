package com.lwh.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author : Luowenhao221
 * @date : 2024/4/23 21:41
 * @Project : JavaEE_experiment
 */

    /*
        * @Description : 注销Servlet
        * @Param : [request, response]
        * @Return : void
     */
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().removeAttribute("student");
        response.sendRedirect("/login.jsp");
    }
}
