package com.lwh.dao;

import com.lwh.bean.Student;
/**
 * @author : Luowenhao221
 * @date : 2024/4/18 0:53
 * @Project : demo
 */
public interface StudentDAO {
    Student login(String stuno, String password);
}
