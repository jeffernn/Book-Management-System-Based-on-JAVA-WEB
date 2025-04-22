<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.dao.BookDao" %>
<%@ page import="com.example.demo.entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/12/10
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>图书列表</title>
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
<td>&nbsp;</td>
<center>
<table id="myTable">

    <thead>
    <tr>
        <th colspan="10"><center><button type="button" class="btn" onclick="validateLogin4()">下载电子版图书</button> </center></th>

    </tr>
    <tr>
        <th><input type="checkbox" id="selectAll"></th>
        <th>序列</th>
        <th>书名</th>
        <th>作者</th>
        <th>出版社</th>
        <th>出版时间</th>
        <th>ISBN号</th>
        <th>图书是/否可借阅</th>
    </tr>
    </thead>
    <tbody>
    <%
        ArrayList list= BookDao.getAllBook();
        for (int i = 0; i < list.size(); i++) {
            Book book=(com.example.demo.entity.Book) list.get(i);

    %>
    <tr>
        <td><input type="checkbox" class="rowCheckbox"></td>
        <td><%=book.getId()%></td>
        <td><%=book.getBookname()%></td>
        <td><%=book.getAuthor()%></td>
        <td><%=book.getPress()%></td>
        <td><%=book.getPubdate()%></td>
        <td><%=book.getIsbn()%></td>
        <td><%=book.getAvailable()%></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>

</center>
<script>
    document.getElementById('selectAll').addEventListener('change', function() {
        var checkboxes = document.querySelectorAll('.rowCheckbox');
        checkboxes.forEach(function(checkbox) {
            checkbox.checked = this.checked;
        }, this);
    });
</script>
<script>
    function validateLogin4() {
        window.location.href = "\DownFile.jsp"; // 替换为你想要转跳的URL
    }
</script>


<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<center mm_ta_src="color">
    <strong>© 软件工程5班 纪凡 刘文浩 林联彪</strong>
</center>

</body>
</html>
