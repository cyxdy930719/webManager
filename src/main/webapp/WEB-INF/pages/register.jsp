<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/21
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Nunito:400,700'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
    <style>
        body
        {
            background-color:#3e50b3;
        }

        body,input
        {
            font-family:Nunito;
        }

        input
        {
            border-width:0px;
            outline:none;
            font-weight:bold;
        }

        .b3
        {
            border-radius: 3px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            -o-border-radius: 3px;
            -ms-border-radius: 3px;
            margin-bottom:8px;
        }

        .tb
        {
            display:table;
            width:100%;
        }

        .td
        {
            display:table-cell;
            vertical-align:middle;
        }

        .material-icons
        {
            color:#bbb;
            vertical-align:middle;
        }

        .icn
        {
            width:24px;
            padding:10px;
        }

        .mrg3b
        {
            margin-bottom:6px;
        }

        .mrg25t
        {
            margin-top:25px;
        }

        #frm-cvr
        {
            font-size:16px;
            width:340px;
            margin:0 auto;
            padding:40px;
            font-weight:bold;
        }

        .cl-wh
        {
            color:#fff;
        }

        #f-mlb
        {
            text-align:center;
            font-size: 26px;
            margin-bottom:25px;
        }

        .f-i-bx
        {
            margin-top: 7px;
            background-color: #fff;
            overflow:hidden;
        }

        .f-i-bx input
        {
            width:100%;
            height:24px;
            font-size: 13.333333px;
            font-family: nunito;
            color:#4e4e4e;
            background-color:transparent;
            padding:0px;
        }
        span{
            color: white;
            font-weight:bold;
            font-size:16px;
        }
        .prt
        {
            padding-right:10px;
        }

        form label
        {
            padding-left:3px;
        }

        #tc-bx
        {
            margin-top: 25px;
            text-align: center;
            color: #c4cfd4;
            font-size: 14px;
            font-weight: normal;
        }

        #tc-bx a
        {
            color:#f1f5f1;
            text-decoration:none;
        }

        .f-i-bx,#s-btn input
        {
            box-shadow: 0px 4px 4px #303f94;
            -webkit-box-shadow: 0px 4px 4px #303f94;
            -moz-box-shadow: 0px 4px 4px #303f94;
            -o-box-shadow: 0px 4px 4px #303f94;
            -ms-box-shadow: 0px 4px 4px #303f94;
        }

        #s-btn input
        {
            padding: 10px;
            width: 100%;
            color: #fff;
            font-size: 20px;
            cursor: pointer;
            background: linear-gradient(#536ae8, #3e50b3);
            background: -webkit-linear-gradient(#536ae8, #3e50b3);
            background: -moz-linear-gradient(#536ae8, #3e50b3);
            background: -o-linear-gradient(#536ae8, #3e50b3);
            background: -ms-linear-gradient(#536ae8, #3e50b3);
        }

        #s-btn input:active
        {
            position:relative;
            top:3px;
            box-shadow: 0px 2px 2px #202c6d;
            -webkit-box-shadow: 0px 2px 2px #202c6d;
            -moz-box-shadow: 0px 2px 2px #202c6d;
            -o-box-shadow: 0px 2px 2px #202c6d;
            -ms-box-shadow: 0px 2px 2px #202c6d;
        }
        #question{
            width: 100%;
            height: 44px;
            line-height: 40px;
            border: none;
        }
        #year{
            height: 44px;
            padding: 0px;
            margin: 0px;
            font-size: 13px;
            margin-bottom:30px;
        }
        #month{
            height: 44px;
            padding: 0px;
            margin: 0px;
            font-size: 13px;
            margin-bottom:30px;
        }
        #day{
            height: 44px;
            padding: 0px;
            margin: 0px;
            font-size: 13px;
            margin-bottom:30px;
        }

        #date{
            background: #3e50b3;
            border-radius: 0;
            -webkit-border-radius: 0px;
        }


    </style>
</head>
<body>
<div id="frm-cvr">
    <div class="cl-wh" id="f-mlb">Create an account</div>
    <form>
        <label class="cl-wh f-lb">Name</label>
        <div class="f-i-bx b3 mrg3b" >
            <div class="tb">
                <div class="td icn"><i class="material-icons">person</i></div>
                <div class="td prt"><input type="text" name="username" id="name" class="ajaxcla"></div>
            </div>
        </div>
        <span id="message"></span><br>

        <label class="cl-wh f-lb">Password</label>
        <div class="f-i-bx b3 mrg3b">
            <div class="tb">
                <div class="td icn"><i class="material-icons">lock</i></div>
                <div class="td prt"><input type="password" name="pwd" id="pwd"></div>
            </div>
        </div>

        <label class="cl-wh f-lb">Password</label>
        <div class="f-i-bx b3">
            <div class="tb">
                <div class="td icn"><i class="material-icons">lock</i></div>
                <div class="td prt"><input type="password" name="pwds" id="pwds" class="ajaxcla"></div>
            </div>
        </div>
        <span id="message1"></span><br>

            <label class="cl-wh f-lb">Birthday</label>
            <div id="date">
            <select class="f-i-bx b3 mrg3b" onchange="setDays()" name="year" id="year">
            </select >
            <span>year</span>
            <select class="f-i-bx b3 mrg3b" onchange="setDays()" name="month" id="month">
            </select>
            <span>month</span>
            <select class="f-i-bx b3 mrg3b" name="day" id="day">
            </select >
            <span>day</span>
            </div>

        <label class="cl-wh f-lb">Telephone</label>
        <div class="f-i-bx b3 mrg3b">
            <div class="tb">
                <div class="td icn"><i class="material-icons">person</i></div>
                <div class="td prt"><input type="text" name="telephone" id="tele"></div>
            </div>
        </div>

        <label class="cl-wh f-lb">Question</label>
        <div class="f-i-bx b3 mrg3b">
            <div class="tb">
                <select name="question" id="question">
                    <div class="td prt">
                        <option id="op" name="que">请问你的初恋女友叫什么？</option>
                        <option id="op1" name="que1">你最喜欢的城市是？</option>
                    </div>
                </select>

            </div>
        </div>

        <label class="cl-wh f-lb">Answer</label>
        <div class="f-i-bx b3 mrg3b">
            <div class="tb">
                <div class="td icn"><i class="material-icons">person</i></div>
                <div class="td prt"><input id="answer" type="text" name="answer" class="ajaxcla" required="required"><span id="message2"></span><br></div>
            </div>
        </div>

        <div id="tc-bx">You agree to our <a href="#">terms and conditions</a> &amp; <a href="#">privacy policies</a>.</div>
        <div id="s-btn" class="mrg25t"><input type="button" id="btn" value="Sign up" class="b3"></div>
    </form>
</div>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
            window.onload=function(){
                var selects = document.getElementsByTagName("select");//通过标签名获取select对象
                var date = new Date();
                var nowYear = date.getFullYear();//获取当前的年
                for(var i=nowYear-100;i<=nowYear;i++){
                    var optionYear = document.createElement("option");
                    optionYear.innerHTML=i;
                    optionYear.value=i;
                    selects[0].appendChild(optionYear);
                }
                for(var i=1;i<=12;i++){
                    var optionMonth = document.createElement("option");
                    optionMonth.innerHTML=i;
                    optionMonth.value=i;
                    selects[1].appendChild(optionMonth);
                }
                getDays(selects[1].value,selects[0].value,selects);
            }
            // 获取某年某月存在多少天
            function getDaysInMonth(month,year){
                var days;
                if (month==1 || month==3 || month==5 || month==7 || month==8 || month==10 || month==12) {
                    days=31;
                }else if (month==4 || month==6 || month==9 || month==11){
                    days=30;
                }else{
                    if ((year%4 == 0 && year%100 != 0) || (year%400 == 0)) {     // 判断是否为润二月
                        days=29;
                    }else {
                        days=28;
                    }
                }
                return days;
            }
            function setDays(){
                var selects = document.getElementsByTagName("select");
                var year = selects[0].options[selects[0].selectedIndex].value;
                var month = selects[1].options[selects[1].selectedIndex].value;
                getDays(month,year,selects);
            }
            function getDays(month,year,selects){
                var days = getDaysInMonth(month,year);
                selects[2].options.length = 0;
                for(var i=1;i<=days;i++){
                    var optionDay = document.createElement("option");
                    optionDay.innerHTML=i;
                    optionDay.value=i;
                    selects[2].appendChild(optionDay);
                }
            }
            $(function () {
                var un;
                var pwd;
                var pwds;
                var year;
                var month;
                var day;
                var tele;
                var que;
                var anw;
                $(".ajaxcla").blur(function () {
                    un = $("#name").val();
                    pwd = $("#pwd").val();
                    pwds = $("#pwds").val();
                    year = $("#year").val();
                    month = $("#month").val();
                    day = $("#day").val();
                    tele = $("#tele").val();
                    que = $("#question").val();
                    anw = $("#answer").val();
                    $.ajax({
                        url:"doregister",
                        type:"post",
                        data:{"username":un,"pwd":pwd,"pwds":pwds,"year":year,"month":month,"day":day,"telephone":tele,"question":que,"answer":anw},
                        success:function (result) {
                            console.log(result)
                            if(result=="0"){
                                $("#message").text("请输入正确用户名");
                            }
                            if (result=="1"){
                                $("#message").text("可以使用");
                            }
                            if(result=="2"){
                                $("#message").text("用户已存在");
                            }
                            if(result=="14"){
                                $("#message1").text("两次输入不一致");
                            }
                            if (result=="13"){
                                $("#message").text("可以使用");
                                $("#message1").text("√");
                                $("#btn").attr("disabled",false)
                            }
                            /*if (result=="135"){
                                $("#message").text("可以使用");
                                $("#message1").text("√");
                                $("#message2").text("请输入");
                            }*/
                        }
                    })
                })
                $("#btn").click(function(){
                    un = $("#name").val();
                    pwd = $("#pwd").val();
                    pwds = $("#pwds").val();
                    year = $("#year").val();
                    month = $("#month").val();
                    day = $("#day").val();
                    tele = $("#tele").val();
                    que = $("#question").val();
                    anw = $("#answer").val();
                    $.ajax({
                        url:"submit",
                        type:"post",
                        data:{"username":un,"pwd":pwd,"pwds":pwds,"year":year,"month":month,"day":day,"telephone":tele,"question":que,"answer":anw},
                        success:function(data){
                            if(data>0){
                                alert("注册成功");
                                window.location.href="http://localhost:8080/webManager/login";
                            }
                        }
                    })
                })
                $("#question option:first").prop("selected", 'selected');


            });
    </script>
</body>
</html>
