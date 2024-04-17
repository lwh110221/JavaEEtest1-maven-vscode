/*
 * @Author: LWHao
 * @Date: 2024-04-17 10:30:11
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-17 11:26:30
 */
package com.lwh.dao.impl;

import com.lwh.dao.StudentDAO;
import com.lwh.bean.Student;
import com.lwh.util.JDBCutil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class StudentDAOImpl implements StudentDAO{
    //根据学号和密码登录
    @Override
    public Student getByStunoAndStupassword(String stuno, String stupassword) {
        Student student = null;
        try (Connection connection = JDBCutil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(
                     "SELECT * FROM t_student WHERE stuno = ? AND stupassword = ?")) {
            preparedStatement.setString(1, stuno);
            preparedStatement.setString(2, stupassword);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                student = new Student();
                student.setStuno(resultSet.getString("stuno"));
                student.setStupassword(resultSet.getString("stupassword"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }
}
