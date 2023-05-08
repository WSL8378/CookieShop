<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" href="css/login.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/simpleCart.min.js"></script>
    <style>

    </style>
</head>
<body>


<!--header-->
<jsp:include page="header.jsp">
    <jsp:param name="flag" value="9"></jsp:param>
</jsp:include>
<!--//header-->


<!--account-->
<div class="account">
    <div class="container">
        <div class="register">
            <c:if test="${!empty msg }">
                <div class="alert alert-success">${msg }</div>
            </c:if>
            <c:if test="${!empty failMsg }">
                <div class="alert alert-danger">${failMsg }</div>
            </c:if>

            <form action="/user_login" method="post" style="position:relative;right: 90px;
																width: 900px;
																height: 560px;
																display: flex;
																border-radius: 20px;
																overflow: hidden;
																box-shadow: 0 25px 45px rgba(0, 0, 0, 0.1);">

                <div class="left" style="width: 500px;height: 560px;">
                    <video src="video/video.mp4" muted loop autoplay style=" width: 100%;
    height: 100%;
    object-fit: cover;"></video>

                </div>
                <div class="right" style="width: 400px;
												height: 760px;
												background: rgba(255,255,255,0.9);
												position: relative; top: 22%">
                    <div class="register-top-grid text-center">
                        <h3>用户登录</h3>
                        <div class="input">
                            <span>用户名/邮箱 <label style="color:red;">*</label></span>
                            <input type="text" name="ue" placeholder="请输入用户名" required="required"
                                   style="width: 280px;height: 40px;border-radius: 20px;">
                        </div>
                        <div class="input">
                            <span>密码 <label style="color:#ff0000;">*</label></span>
                            <input type="password" name="password" placeholder="请输入密码" required="required"
                                   style="width: 280px;height: 40px;border-radius: 20px;">
                        </div>

                        <div class="clearfix"></div>
                    </div>
                    <div class="register-but text-center">
                        <input type="submit" value="提交" style=" width: 180px;
																			height: 40px;
																			border-radius: 20px;
																			border: none;
																			color: #fff;
																			font-size: 16px;
																			cursor: pointer;
																			margin-top: 50px;
																			background-image: linear-gradient(120deg, #76daec 0%, #c5a8de 100%);">
                        <div class="clearfix"></div>
                    </div>
                </div>
            </form>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//account-->


<!--footer-->
<jsp:include page="footer.jsp"></jsp:include>
<!--//footer-->


</body>
</html>