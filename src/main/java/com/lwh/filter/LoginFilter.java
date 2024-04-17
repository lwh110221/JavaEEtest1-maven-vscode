package com.lwh.filter;


import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/**
 * @author : Luowenhao221
 * @date : 2024/4/18 1:11
 * @Project : demo
 */
@WebFilter("/*")
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();
        if (uri.contains("/login.jsp") || uri.contains("/login") || uri.contains("/css/") || uri.contains("/js/") || uri.contains("/images/")) {
            chain.doFilter(request, response);
        } else {
            Object student = req.getSession().getAttribute("student");
            if (student != null) {
                chain.doFilter(request, response);
            } else {
                res.sendRedirect("login.jsp");
            }
        }
    }

    @Override
    public void destroy() {
    }
}