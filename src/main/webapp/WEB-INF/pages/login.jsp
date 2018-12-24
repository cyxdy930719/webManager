<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/22
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <style>
        *, *:before, *:after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            font-size: 62.5%;
            height: 100%;
            overflow: hidden;
        }
        @media (max-width: 768px) {
            html, body {
                font-size: 50%;
            }
        }

        svg {
            display: inline-block;
            width: 2rem;
            height: 2rem;
            overflow: visible;
        }

        .svg-icon {
            cursor: pointer;
        }
        .svg-icon path {
            stroke: rgba(255, 255, 255, 0.9);
            fill: none;
            stroke-width: 1;
        }

        input, button {
            outline: none;
            border: none;
        }

        .cont {
            position: relative;
            height: 100%;
            background: linear-gradient(to bottom, rgba(146, 135, 187, 0.8) 0%, rgba(0, 0, 0, 0.6) 100%);
            /*background: #3e50b3;*/
            background-size: cover;
            overflow: auto;
            font-family: "Open Sans", Helvetica, Arial, sans-serif;
        }

        .demo {
            position: absolute;
            top: 50%;
            left: 50%;
            margin-left: -15rem;
            margin-top: -26.5rem;
            width: 30rem;
            height: 53rem;
            overflow: hidden;
        }

        .login {
            position: relative;
            height: 100%;
            background: linear-gradient(to bottom, rgba(146, 135, 187, 0.8) 0%, rgba(0, 0, 0, 0.6) 100%);
            transition: opacity 0.1s, -webkit-transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25);
            transition: opacity 0.1s, transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25);
            transition: opacity 0.1s, transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25), -webkit-transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25);
            -webkit-transform: scale(1);
            transform: scale(1);
        }
        .login.inactive {
            opacity: 0;
            -webkit-transform: scale(1.1);
            transform: scale(1.1);
        }
        .login__check {
            position: absolute;
            top: 16rem;
            left: 13.5rem;
            width: 14rem;
            height: 2.8rem;
            background: #fff;
            -webkit-transform-origin: 0 100%;
            transform-origin: 0 100%;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
        }
        .login__check:before {
            content: "";
            position: absolute;
            left: 0;
            bottom: 100%;
            width: 2.8rem;
            height: 5.2rem;
            background: #fff;
            box-shadow: inset -0.2rem -2rem 2rem rgba(0, 0, 0, 0.2);
        }
        .login__form {
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            height: 50%;
            padding: 1.5rem 2.5rem;
            text-align: center;
        }
        .login__row {
            height: 5rem;
            padding-top: 1rem;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }
        .login__icon {
            margin-bottom: -0.4rem;
            margin-right: 0.5rem;
        }
        .login__icon.name path {
            stroke-dasharray: 73;
            stroke-dashoffset: 73;
            -webkit-animation: animatePath 2s 0.5s forwards;
            animation: animatePath 2s 0.5s forwards;
        }
        .login__icon.pass path {
            stroke-dasharray: 92;
            stroke-dashoffset: 92;
            -webkit-animation: animatePath 2s 0.5s forwards;
            animation: animatePath 2s 0.5s forwards;
        }
        .login__input {
            display: inline-block;
            width: 22rem;
            height: 100%;
            padding-left: 1.5rem;
            font-size: 1.5rem;
            background: transparent;
            color: #FDFCFD;
        }
        .login__submit {
            position: relative;
            width: 100%;
            height: 4rem;
            margin: 5rem 0 2.2rem;
            color: rgba(255, 255, 255, 0.8);
            background: #FF3366;
            font-size: 1.5rem;
            border-radius: 3rem;
            cursor: pointer;
            overflow: hidden;
            transition: width 0.3s 0.15s, font-size 0.1s 0.15s;
        }
        .login__submit:after {
            content: "";
            position: absolute;
            top: 50%;
            left: 50%;
            margin-left: -1.5rem;
            margin-top: -1.5rem;
            width: 3rem;
            height: 3rem;
            border: 2px dotted #fff;
            border-radius: 50%;
            border-left: none;
            border-bottom: none;
            transition: opacity 0.1s 0.4s;
            opacity: 0;
        }

        .login__signup {
            font-size: 1.2rem;
            color: #ABA8AE;
        }
        .login__signup a {
            color: #fff;
            cursor: pointer;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="cont">
    <div class="demo">
        <div class="login">
            <div class="login__check"></div>
            <div class="login__form">
                <div class="login__row">
                    <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
                        <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
                    </svg>
                    <input type="text" class="login__input name" placeholder="Username" name="uname" id="uname"/>
                </div>
                <div class="login__row">
                    <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
                        <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
                    </svg>
                    <input type="password" class="login__input pass" placeholder="Password" name="pwd" id="pwd"/>
                </div>
                <button type="button" class="login__submit" id="btn">Sign in</button>
                <p class="login__signup">Don't have an account? &nbsp;<a href="register">Sign up</a></p>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    $(function(){
        var uname;
        var pwd;
        $("#btn").click(function(){
            uname = $("#uname").val();
            pwd = $("#pwd").val();
            $.ajax({
                url:"dologin",
                type:"post",
                data:{"uname":uname,"pwd":pwd},
                async:false,
                success:function(data){
                    console.log(data)
                    if (data=="1"){
                        alert("登陆成功");
                        window.location.href="http://localhost:8080/webManager/list";
                    }
                    if(data=="2"){
                        alert("密码错误");
                        window.location.href="http://localhost:8080/webManager/login";
                    }
                    if (data=="0"){
                        alert("用户不存在");
                        window.location.href="http://localhost:8080/webManager/login";
                    }
                }
            })
        })

    });
</script>


<script type="text/javascript" src="js/index.js"></script>
</body>
</html>
