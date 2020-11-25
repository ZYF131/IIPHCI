<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>系统登录</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resource/jquery-easyui-1.3.3/themes/default/dmaku.css">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resource/jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript">
        function login() {
            var userName = $("#userName").val();
            var password = $("#password").val();
            //var roleName = $("#roleName").val();
            if (userName == null || userName == "") {
                alert("用户名不能为空！");
                return;
            }
            if (password == null || password == "") {
                alert("密码不能为空！");
                return;
            }
            var xuanzhong= $("input[name='yonghu']:checked").val();



            if(xuanzhong=="普通用户")
            {
                var tbUser={
                    "usernc" : $("#userName").val(),
                    "userpwd" : $("#password").val()
                     };

                var formData = new FormData();
                formData.append('username',$("#userName").val());
                formData.append('userpwd',$("#password").val());

                $.ajax({
                    url:'${cx}/api/tbUser/login',
                    dataType:'text',
                    type:'POST',
                    async: false,
                    data: formData,
                    processData : false, // 使数据不做处理
                    contentType : false, // 不要设置Content-Type请求头
                    success: function(data){
                        console.log(data);
                        if (data == 'ok') {
                            location.href="${cx}/api/subjectinfo/getStu/1";
                        }
                        else if(data='error')
                        {
                            alert("用户名或密码错误！");
                        }
                    },
                    error:function(response){
                        console.log(response);
                    }
                });




            }else if(xuanzhong=="管理员")
            {
               $("#adminlogin").submit();
            }else if(xuanzhong=="教师")
            {
                var tbUser={
                    "usernc" : $("#userName").val(),
                    "userpwd" : $("#password").val()
                };

                var formData = new FormData();
                formData.append('username',$("#userName").val());
                formData.append('userpwd',$("#password").val());

                $.ajax({
                    url:'${cx}/api/teacher/login',
                    dataType:'text',
                    type:'POST',
                    async: false,
                    data: formData,
                    processData : false, // 使数据不做处理
                    contentType : false, // 不要设置Content-Type请求头
                    success: function(data){
                        console.log(data);
                        if (data == 'ok') {
                            location.href="${cx}/user/toMainTeacher";
                        }
                        else if(data='error')
                        {
                            alert("用户名或密码错误！");
                        }
                    },
                    error:function(response){
                        console.log(response);
                    }
                });
            }



        }
    </script>
</head>
<body>
<form id=adminlogin method=post
      name=adminlogin action="${pageContext.request.contextPath}/user/login">
<div style="background-color: #2c4684; margin-top: 200px">
    <div style="margin: 0px auto; width: 936px">
        <div style="height: 250px">
            <div class="k1">
                <div class="login r">
                    <ul class="hd" id="hd">
                        <li class="on">系统登录</li>
                        <!-- <li>手机动态登录</li> -->
                    </ul>
                    <ul class="bd" id="bd">
                        <li style="display: block;">
                            <input type="text" class="tex" placeholder="用户名"  name="userName"
                                   id="userName">
                            <input type="password" class="tex tex2" placeholder="密&nbsp;&nbsp;码"  name="password"
                                   id="password">
                            <div class="tex11">
                                <label ><input type="radio" name="yonghu" value="普通用户" checked="checked">普通用户</label>
                                <label  style="margin-left:20px "><input type="radio" name="yonghu" value="管理员">管理员</label>
                                <label  style="margin-left:20px "><input type="radio" name="yonghu" value="教师">实验室教师</label>
                            </div>



                            <input class="but" type="button" onclick="javascript:login();return false;" value="登     录" >
                            <p class="p2">
                                <a href="${cx}/user/register2">注&nbsp;&nbsp;&nbsp;&nbsp;册</a>丨
                                <a href="${cx}/user/registerCopy2">忘记密码</a>
                            </p>
                        </li>

                    </ul>
                </div>
            </div>
            </div>
    </div>
</div>
</form>

</body>
</html>
<script type=text/javascript>
    if ('${errorMsg}' != '') {
        alert('${errorMsg}');
    }
</script>