<%@ page import="com.jspsmart.upload.SmartUpload" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/12/17
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    out.clear();
    out=pageContext.pushBody();
    SmartUpload su=new SmartUpload();
    su.initialize(pageContext);
    su.setContentDisposition(null);
    su.downloadFile(request.getParameter("name"));
    out.print("下载成功！");
%>
</body>
</html>
