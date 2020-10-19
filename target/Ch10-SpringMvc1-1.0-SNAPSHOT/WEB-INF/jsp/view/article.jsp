<%--
  Created by IntelliJ IDEA.
  User: zhou
  Date: 2020/9/14
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>article</title>
</head>
<body>
<div class="article" style="">

</div>
</body>
<script type="text/javascript" src="${cx}/resource/jquery-easyui-1.3.3/jquery.min.js"></script>

<script type="text/javascript">
    $(window).load( function(){
        initData();
    } );
    //加载初始化数据
    function initData(){
        $.ajax({
            type:'GET',
            dataType: "json",
            url:"${cx}/article/findById?id=${id}",
            success:function(res){

                //请求成功时执行该函数内容，result即为服务器返回的json对象

                $('.article').html(res.articleContent);
            },
            error:function(){
//            $("#test").html("发生错误:"+jqXHR.status);
                alert("发生错误");
            }
        });
    }
</script>
</body>
</html>
