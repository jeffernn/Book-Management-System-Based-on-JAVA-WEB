<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: 27545
  Date: 2024/12/13
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String bookname=request.getParameter("bookname");
    String author=request.getParameter("author");
    String press=request.getParameter("press");
    String pubdate=request.getParameter("pubdate");
    String isbn=request.getParameter("isbn");
    String available=request.getParameter("available");
    String URL="jdbc:mysql://localhost:3306/mydb";
    String userName="saber";
    String pass="1234";
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection(URL,userName,pass);
    String sql="insert into book(bookname,author,press,pubdate,isbn,available)"+"value(?,?,?,?,?,?)";
    PreparedStatement pst=conn.prepareStatement(sql);
    pst.setString(1,bookname);
    pst.setString(2,author);
    pst.setString(3,press);
    pst.setString(4,pubdate);
    pst.setString(5,isbn);
    pst.setString(6,available);
    int i=pst.executeUpdate();
    if(i>0){
        out.println("添加数据成功");
    }else {
        out.println("添加数据失败");
    }
    conn.close();

%>
</body>
</html>
