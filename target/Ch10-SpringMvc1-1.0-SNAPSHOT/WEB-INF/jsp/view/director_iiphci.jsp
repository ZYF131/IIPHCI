<%--
  Created by IntelliJ IDEA.
  User: zhou
  Date: 2020/9/3
  Time: 15:56
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
        <h3>科学研究</h3>
        <div class="se-secondnav">

            <div><a href="${cx}/todirector" style="font-weight: 600;" class="bg" >研究方向</a></div>

            <div><a href="${cx}/toResult" style="font-weight: 600;"   >研究成果</a></div>

        </div>
    </div>



    <div class="mainWrap list-lr">
        <div class="list-l">
            <nav>
                <a href="">首页</a>&nbsp;&nbsp; -
                <a href="">科学研究</a>
            </nav>
            <div id="news_id">
                <h2>研究方向 </h2>
                <hr>
                <div class="twindex">
                    <p>
                        ☆生物医学信号处理与人机交互</br>
                        主要进行人体生物电信号相关的理论和应用研究(获取，检测，分类，交互)，研究对象包括脑电信号(EEG)、眼电
                        信号(EOG)、心电信号(ECG)等。
                    </p>
                </div>
                <div class="twindex">
                    <p>
                        ☆智能视频</br>
                        主要进行基于视频流的智能分析方法研究及其工程应用。包括运动目标检测、目标跟踪及特殊场景条件下的目标
                        检测、目标分类检索等。
                    </p>
                </div>
                <div class="twindex">
                    <p>
                        ☆语音信号处理</br>
                        主要研究基于语音的人机交互算法与系统。语音识别、语音情感识别、基于麦克风阵列的声源定位以及噪声环境
                        下的语音增强等。
                    </p>
                </div>
            </div>
        </div>

    </div>
<%@ include file="footer_iiphci.jsp"%>
</body>
</html>
