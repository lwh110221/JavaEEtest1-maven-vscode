/*
 * @Author: LWHao
 * @Date: 2024-04-16 19:30:26
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-16 19:32:53
 */
package com.lwh.bean;

public class Book {
    private Integer bookid;
    private String bookname;
    private double bookprice;

    public Integer getBookid() {
        return bookid;
    }

    public void setBookid(Integer bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public double getBookprice() {
        return bookprice;
    }

    public void setBookprice(double bookprice) {
        this.bookprice = bookprice;
    }
}

