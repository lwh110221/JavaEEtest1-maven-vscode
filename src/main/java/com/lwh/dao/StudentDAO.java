/*
 * @Author: LWHao
 * @Date: 2024-04-17 10:26:16
 * @LastEditors: LWHao
 * @LastEditTime: 2024-04-17 11:10:28
 */
package com.lwh.dao;

import com.lwh.bean.Student;

public interface StudentDAO {
    //根据学号和密码登录

    Student getByStunoAndStupassword(String stuno,String stupassword);

}

