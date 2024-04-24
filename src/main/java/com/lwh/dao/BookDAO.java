/*
 * @Author: LWHao
 * @Date: 2024-04-16 19:34:15
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-16 19:35:46
 */
package com.lwh.dao;

import com.lwh.bean.Book;
import java.util.List;

public interface BookDAO {
    //添加图书
    void addBook(Book book);
    //根据图书编号获取图书
    Book getBookById(Integer bookid);
    //根据价格区间获取图书
    List<Book> getBooksByPriceRange(double minPrice, double maxPrice);
    //修改书籍价格
    void updateBookPrice(String bookid, double newPrice);

    //获取所有图书
    List<Book> getBooksByName(String bookname);
}
