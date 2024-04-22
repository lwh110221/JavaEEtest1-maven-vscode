<%--
  Created by IntelliJ IDEA.
  Author : luowenhao221
  Date: 2024/4/18
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>登陆</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!--图标-->
  <link rel="stylesheet" type="text/css" href="/resources/css/font-awesome.min.css">

  <!--布局框架-->
  <link rel="stylesheet" type="text/css" href="/resources/css/util.css">

  <!--主要样式-->
  <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
</head>

<body>

<div class="login">
  <div class="container-login100">
    <div class="wrap-login100">
      <div class="login100-pic js-tilt" data-tilt>
        <img src="/resources/img/img-01.png" alt="IMG">
      </div>
      <a href="https://github.com/lwh110221/JavaEEtest1-maven-vscode">GitHub主页</a>
      <form class="login100-form validate-form" action="/login" method="post">
				<span class="login100-form-title">
					登录
				</span>

        <div class="wrap-input100 validate-input">
          <input class="input100" type="text" name="stuno" placeholder="学号">
          <span class="focus-input100"></span>
          <span class="symbol-input100">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</span>
        </div>

        <div class="wrap-input100 validate-input">
          <input class="input100" type="password" name="stupassword" placeholder="密码">
          <span class="focus-input100"></span>
          <span class="symbol-input100">
						<i class="fa fa-lock" aria-hidden="true"></i>
					</span>
        </div>

        <div class="container-login100-form-btn">
          <button class="login100-form-btn" type="submit">
            登陆
          </button>
        </div>

<%--        <div class="text-center p-t-12">--%>
<%--          <a class="txt2" href="javascript:">--%>
<%--            忘记密码？--%>
<%--          </a>--%>
<%--        </div>--%>

<%--        <div class="text-center p-t-136">--%>
<%--          <a class="txt2" href="#">--%>
<%--            还没有账号？立即注册--%>
<%--            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>--%>
<%--          </a>--%>
<%--        </div>--%>
      </form>
    </div>
  </div>
</div>

</body>
</html>