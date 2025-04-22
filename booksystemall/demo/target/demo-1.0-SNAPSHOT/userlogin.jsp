<%--
  Created by IntelliJ IDEA.
  User: 27545
  Date: 2024/12/13
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户登录</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: #fff;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 250px; /* 调整宽度 */
            text-align: center; /* 居中对齐 */
        }
        .login-container h2 {
            margin-bottom: 20px;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 90%; /* 调整输入框宽度 */
            padding: 8px; /* 调整输入框内边距 */
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .login-container button {
            width: 45%; /* 调整按钮宽度 */
            padding: 8px; /* 调整按钮内边距 */
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .login-container button:hover {
            background-color: #0056b3;
        }
        .error-message {
            color: red;
            margin-top: 10px;
        }
        table {
            width: 25%;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.5); /* 白色，50%透明度 */
        }
        th, td {
            padding: 10px;
            border: 1px solid #000;
        }
        th {
            background-color: rgba(255, 255, 255, 0.7); /* 白色，70%透明度 */
        }
        td {
            background-color: rgba(255, 255, 255, 0.7); /* 白色，70%透明度 */
        }
        /* 按钮基本样式 */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 10px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            color: #ffffff;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* 按钮悬停效果 */
        .btn:hover {
            background-color: #0056b3;
        }

        /* 按钮点击效果 */
        .btn:active {
            background-color: #004080;
        }

        /* 按钮禁用状态 */
        .btn:disabled {
            background-color: #cccccc;
            cursor: not-allowed;
        }

        /* 字体颜色 */
        .color{
            color:#FFF
        }

        body {
            background-image: url('img/backgroud.jpg'); /* 替换为你的图片路径 */
            background-repeat: repeat; /* 设置为拉伸 */
            background-size: cover; /* 保持图片原始大小 */
            margin: 0; /* 去除默认的body边距 */
        }
    </style>
</head>
<body>
<div class="login-container">
    <center>
        <img src="img/logo.jpg" width="71" height="61" />
    </center>
    <h2>学生用户登录</h2>
    <form id="loginForm">
        <input type="text" id="username" placeholder="用户名" required>
        <input type="password" id="password" placeholder="密码" required>
        <button type="button" onclick="validateLogin()">登录学生用户</button>
        <button type="button" onclick="validateLogin1()">切换管理用户</button>
    </form>
    <div id="error-message" class="error-message"></div> <center mm_ta_src="color">
    <p>&nbsp;</p>
    <strong>© 软件工程5班 纪凡 刘文浩 林联彪</strong>
</center>
</div>

<script>
    // 预设的用户名和密码
    const validUsername = "user";
    const validPassword = "123456";

    // 验证登录信息
    function validateLogin() {
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        const errorMessage = document.getElementById('error-message');

        // 清除之前的错误信息
        errorMessage.textContent = "";

        // 验证用户名和密码
        if (username === validUsername && password === validPassword) {
            // 验证通过，跳转到指定页面
            window.location.href = "\busershow.jsp"; // 替换为你要跳转的页面URL
        } else {
            // 验证失败，显示错误信息
            errorMessage.textContent = "用户名或密码错误，请重试。";
        }
    }
</script>
<script>
    function validateLogin1() {
        window.location.href = "\adminlogin.jsp"; // 替换为你想要转跳的URL
    }
</script>

</body>

</html>
