<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/12/10
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>修改图书</title>
    <style type="text/css">
        body,td,th {
            color: #09F;
        }
        table {
            width: 35%;
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
<%
    String id=request.getParameter("id");
    String bookname=request.getParameter("bookname");
    String author =request.getParameter("author");
    String press=request.getParameter("press");
    String pubdate = request.getParameter("pubdate"); // 获取字符串格式的发布日期
    String isbn=request.getParameter("isbn");
    String available=request.getParameter("available");
%>
<form action="UpdateServlet" method="post">
    <p>&nbsp; </p>
    <center>
        <table width="200" border="1" cellspacing="0" cellpadding="0">
            <tr>
                <td colspan="2"><div align="center"><strong>修改图书信息</strong></div></td>
            </tr>
            <tr>
                <td>序列：</td>
                <td><label for="textfield"></label>
                    <input type="text" name="id" id="textfield" value="<%=id%>"/></td>
            </tr>
            <tr>
                <td>书名：</td>
                <td><label for="textfield2"></label>
                    <input type="text" name="bookname" id="textfield2" value="<%=bookname%>"/></td>
            </tr>
            <tr>
                <td>作者：</td>
                <td><label for="textfield3"></label>
                    <input type="text" name="author" id="textfield3" value="<%=author%>"/></td>
            </tr>
            <tr>
                <td>出版社：</td>
                <td><label for="textfield4"></label>
                    <input type="text" name="press" id="textfield4" value="<%=press%>"/></td>
            </tr>
            <tr>
                <td>出版时间：</td>
                <td><label for="textfield5"></label>
                    <input type="text" name="pubdate" id="textfield5" value="<%=pubdate%>"/></td>
            </tr>
            <tr>
                <td>ISBN号：</td>
                <td><label for="textfield6"></label>
                    <input type="text" name="isbn" id="textfield6" value="<%=isbn%>"/></td>
            </tr>
            <tr>
                <td>图书借阅状态填（是/否）</td>
                <td><label for="textfield7"></label>
                    <input type="text" name="available" id="textfield7" value="<%=available%>"/></td>
            </tr>
            <tr>
                <td colspan="2"><center><input type="submit" class="btn" name="button" id="button" value="提交" /></center></td>
            </tr>
        </table>
    </center>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<center mm_ta_src="color">
    <strong>© 软件工程5班 纪凡 刘文浩 林联彪</strong>
</center>
</body>

</html>
