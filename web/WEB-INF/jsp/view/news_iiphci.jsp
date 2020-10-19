<%--
  Created by IntelliJ IDEA.
  User: zhou
  Date: 2020/9/3
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>安徽大学-智能信息处理与人机交互实验室</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="${cx}/resource/res/sites/css/base.css" rel="stylesheet" type="text/css">
    <link href="${cx}/resource/res/sites/css/second.css" rel="stylesheet" type="text/css">
    <link href="${cx}/resource/res/sites/css/webstyle.css" rel="stylesheet" type="text/css">
    <link href="${cx}/resource/res/sites/font/font.css" rel="stylesheet" type="text/css">
    <script src="${cx}/resource/res/sites/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="${cx}/resource/res/sites/js/jquery_compat.js" type="text/javascript"></script>
    <script src="${cx}/resource/res/sites/js/comm.js" type="text/javascript"></script>
    <script src="${cx}/resource/res/sites/js/imagesloaded.pkgd.min.js" type="text/javascript"></script>



</head>
<body>
<%@ include file="header_iiphci.jsp"%>
<div class="content">
    <style>
        .se-nav .se-secondnav div .bg {
            background: #B7A57A;
            color: #fff;
            padding:5px 16px;
        }

    </style>

    <div class="se-nav" style="background:url(${cx}/resource/res/sites/images/twain-bg.png) no-repeat;background-size: cover;">
        <h3>重要信息</h3>
        <div class="se-secondnav">
        </div>
    </div>


    <div class="mainWrap list-lr">
        <div class="list-l">
            <nav>
                <a href="">首页</a>&nbsp;&nbsp; -
                <a href="">重要信息</a>
            </nav>
            <div id="news_id">
            <h2>${TNews_title} <span><i class="thunews-clock-o"></i>${TNews_datetime}</span></h2>
            <hr>
            <div class="twindex">
                <p>
                    ${TNews_con}
                </p> </div>
            </div>
        </div>

    </div>
</div>

<%@ include file="footer_iiphci.jsp"%>

</body>
</html>
