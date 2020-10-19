<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ssm-maven系统登录</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resource/jquery-easyui-1.3.3/themes/default/dmaku.css">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resource/jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript">
        function login() {
            var usernc = $("#usernc").val();
            var userpwd = $("#userpwd").val();
            var truename = $("#truename").val();
            var email = $("#email").val();
            var sex = $("#sex").val();
            var tel = $("#tel").val();
            var workplace = $("#workplace").val();




            //var roleName = $("#roleName").val();
            if (truename == null || truename == ""||userpwd==null||userpwd==""||usernc==null||usernc==""||email==null||email==""||sex==null||sex==""||tel==null||tel==""||workplace==null||workplace=="") {
                alert("请填写完整信息！！！");
                return;
            }



                <%--var formData = new FormData();--%>
                <%--formData.append('username',$("#userName").val());--%>
                <%--formData.append('userpwd',$("#password").val());--%>
                <%--formData.append('username',$("#userName").val());--%>
                <%--formData.append('userpwd',$("#password").val());--%>
                <%--formData.append('username',$("#userName").val());--%>
                <%--formData.append('userpwd',$("#password").val());--%>
                <%--formData.append('username',$("#userName").val());--%>
                <%--formData.append('userpwd',$("#password").val());--%>

                <%--$.ajax({--%>
                <%--    url:'${cx}/api/tbUser/login',--%>
                <%--    dataType:'text',--%>
                <%--    type:'POST',--%>
                <%--    async: false,--%>
                <%--    data: formData,--%>
                <%--    processData : false, // 使数据不做处理--%>
                <%--    contentType : false, // 不要设置Content-Type请求头--%>
                <%--    success: function(data){--%>
                <%--        console.log(data);--%>
                <%--        if (data == 'ok') {--%>
                <%--            location.href="${cx}/api/subjectinfo/getStu/1";--%>
                <%--        }--%>
                <%--        else if(data='error')--%>
                <%--        {--%>
                <%--            alert("用户名或密码错误！");--%>
                <%--        }--%>
                <%--    },--%>
                <%--    error:function(response){--%>
                <%--        console.log(response);--%>
                <%--    }--%>
                <%--});--%>


               $("#adminlogin").submit();



        }
    </script>
</head>
<body>
<form id=adminlogin method=post
      name=adminlogin action="${pageContext.request.contextPath}/api/tbUser/save">
<div style="background-color: #2c4684; margin-top: 200px">
    <div style="margin: 0px auto; width: 936px">
        <div style="height: 250px">
            <div class="k1">
                <div class="login2 r">
                    <ul class="hd" id="hd">
                        <li class="on">系统注册</li>
                        <!-- <li>手机动态登录</li> -->
                    </ul>
                    <ul class="bd" id="bd">
                        <li style="display: block;">
                            <input type="text" class="tex" placeholder="用户名(登陆时使用)" value="${tbUser.usernc }" name="usernc"
                                   id="usernc">
                            <input type="text" class="tex tex21" placeholder="真实姓名" value="${tbUser.truename }" name="truename"
                                   id="truename">
                            <input type="password" class="tex tex2" placeholder="密&nbsp;&nbsp;码" value="${tbUser.userpwd }" name="userpwd"
                                   id="userpwd">
                            <input type="text" class="tex tex22" placeholder="联系邮箱" value="${tbUser.email }" name="email"
                                   id="email">
                            <input type="text" class="tex tex23" placeholder="联系电话" value="${tbUser.usernc }" name="tel"
                                   id="tel">
                            <input type="text" class="tex tex24" placeholder="工作单位" value="${tbUser.usernc }" name="workplace"
                                   id="workplace">
                            <input type="text" class="tex tex25" placeholder="性别" value="${tbUser.usernc }" name="sex"
                                   id="sex">
                            <input class="but" type="button" onclick="javascript:login();" value="注    册" >
                            <p class="p2">
                                <a href="${cx}/user/login2">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>丨
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