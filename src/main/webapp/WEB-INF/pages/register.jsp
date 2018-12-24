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
    <title>Title</title>
    <style type="text/css">
        .date1{
            width:350px;
            height:100px;
            border:1px solid red;
        }

    </style>
</head>
<body>
    <form>
        用户名：<input type="text" name="username" id="name" class="ajaxcla"><span id="message"></span><br>
        密码：<input type="password" name="pwd" id="pwd"><br>
        密码确认：<input type="password" name="pwds" id="pwds" class="ajaxcla"><span id="message1"></span><br>
        <div class="date1">
        <span>出生日期:</span>
        <select onchange="setDays()" name="year" id="year">
        </select>
        <span>年</span>
        <select onchange="setDays()" name="month" id="month">
        </select>
        <span>月</span>
        <select name="day" id="day">
        </select >
        <span>日</span>
        </div>
        电话：<input type="text" name="telephone" id="tele"><br>
        安全问题：<select name="question" id="question">
        <option id="op" name="que">请问你的初恋女友叫什么？</option>
        <option id="op1" name="que1">你最喜欢的城市是？</option>
    </select><br>
        答案：<input id="answer" type="text" name="answer" class="ajaxcla" required="required"><span id="message2"></span><br>
        <input type="button"  value="注册" disabled="disabled" id="btn" >
    </form>
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
