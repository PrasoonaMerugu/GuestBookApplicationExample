 <%@ page import="main.java.io.task.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body style="width: 100vw; height: 100vh;">
    <%
        if(request.getSession(false) != null) {
            request.getSession().removeAttribute("user");
        }
    %>
    <div style="width: 250px;
                height: 200px;
                position: absolute;
                top: 35%;
                left: 50%;
                margin: -125px 0 0 -125px;">
        <h2 style="margin-bottom: 36px">Guest book</h2>
        <form method="post" action="login">
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input name="email" type="email" class="form-control" id="exampleInputEmail1" placeholder="Email" required>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"
                       pattern=".{8,}" required>
            </div>
            <button type="submit" class="btn btn-primary">Log in</button>
            <a href="${pageContext.request.contextPath}/signup" class="btn btn-success" role="button">Sign Up</a>
        </form>
        <p style="color: red;">
            <%
                if(request.getSession().getAttribute("status") != null) {
                    out.print("Login failed. Try again.");
                }
            %>
        </p>
    </div>
</body>
</html>
