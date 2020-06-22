<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.userDAO" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
username=<%=request.getParameter("username")%>
password=<%=request.getParameter("password")%>


<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (userDAO.login(username, password)) {
        out.println("welcome " + username);
        session.setAttribute("name", username);//创建session 并向表中增加一行name(如果已经存在就会覆盖)
        response.sendRedirect("index.jsp");
    } else {
        out.println("登陆失败");
        response.sendRedirect("login.html");
    }
%>
</body>
</html>