
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Cookie[] cookies = request.getCookies();

	String username = null;
	String password = null;
    // 此处的 cookie 键值对需要分开获取 不然对不上号
	if(cookies != null){
		for(Cookie cookie : cookies){
			String name = cookie.getName();
			 if("userName".equals(cookie.getName())){
                     username=cookie.getValue();
                }
             if("passWord".equals(cookie.getName())){
                    password=cookie.getValue();

                }
		}
		
	}

%>
<html>

<head>
    <style>
        body {
            padding: 0;
            margin: 0;
            background-color: #fefefe;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .container {
            width: 300px;
            height: 280px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid gainsboro;
        }
        
        .container .d1 {
            color: darkgoldenrod;
            font-size: 25px;
            width: 100%;
            margin: 15px 17px;
        }
        
        .container .d2 {
            font-size: 13px;
            width: 100%;
            margin: 15px 17px;
        }
        
        .container .loginForm {
            width: 80%;
            height: auto;
            border: 1px dotted #0e0e0e;
            padding: 0 20px;
            margin: 15px auto;
            padding: 40px 10px;
            padding-top: 5px;
            position: relative;
        }
        
        .loginForm .title {
            font-size: 12px;
            padding: 2px;
            color: #fff;
            background-color: darkgoldenrod;
            width: 29px;
            margin-left: 10px;
            margin-top: -12px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .loginForm span {
            margin: 10px;
            color: #000;
            display: flex;
            align-items: center;
            justify-content: flex-start;
            flex-wrap: nowrap;
        }
        
        .loginForm span div {
            font-size: 12px;
            width: 40px;
            padding: 0 5px;
            text-align: right;
        }
        
        .loginForm div {
            width: 100%;
            font-size: 12px;
            padding-left: 50px;
            display: flex;
        }
        
        .loginForm .loginBtn {
            background-color: darkgoldenrod;
            border: none;
            border-radius: 5px;
            color: #fff;
            padding: 5px 18px;
            font-size: 12px;
            position: absolute;
            right: 10px;
            bottom: 5px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="d1">我的账户</div>
        <%if(username!=null){

        %>
        <div class="d2">您已登录</div>
        <%
        }else{
        %>
        <div class="d2">请登录...</div>
        <%
        }
        %>
        
        <form class="loginForm" action="checkLogin.jsp" method = "post">
            <div class="title">登录</div>
            <span>
              <div>用户名</div>
              <input type="text" name="userName"/>
          </span>
            <span>
              <div>密码</div>
              <input type="password" name="password">
          </span>
            <div>
                <input type="checkbox" name="rememberMe"> 记住用户名
            </div>
            <button type="submit" class="loginBtn">login</button>
        </form>
        
        <% if(username!=null){
        %>
             <span style="float:right"><a href="forgetMe.jsp" style="color: goldenrod">清除状态</a></span><br>
             <%
        }%>
          <span style="float:right"><a href="register.jsp" style="color: goldenrod">注册</a></span>  
    </div>
</body>

</html>