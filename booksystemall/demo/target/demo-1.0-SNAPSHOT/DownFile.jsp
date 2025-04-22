<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/12/17
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>下载页面</title>
    <style type="text/css">
        body,td,th {
            color: #09F;
        }
        table {
            width: 80%;
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

        .color{
            color:#FFF
        }
        body {
            background-image: url('img/backgroud.jpg'); /* 替换为你的图片路径 */
            background-repeat: repeat; /* 设置为拉伸 */
            background-size: cover; /* 保持图片原始大小 */
            margin: 0; /* 去除默认的body边距 */
        }
        .page-content {
            margin-top: 20px;
        }
        .pagination {
            margin-top: 20px;
        }
        .pagination button {
            margin-right: 5px;
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
    </style>
</head>
<body>
<center><p><a href="do_DownFile.jsp?name=upload/a.txt">下载一</a></p></center>
<center><p><a href="do_DownFile.jsp?name=upload/b.txt">下载二</a></p></center>
</body>
</html>
