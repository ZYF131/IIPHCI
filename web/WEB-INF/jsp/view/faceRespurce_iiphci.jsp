<%--
  Created by IntelliJ IDEA.
  User: zhou
  Date: 2020/9/3
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>安徽大学-智能信息处理与人机交互实验室</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="${cx}/resource/res/sites/images/favicon.ico"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="${cx}/resource/res/sites/css/index.css?v=1" rel="stylesheet" type="text/css">
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
        <h3>公开数据集</h3>
        <div class="se-secondnav">

            <div><a href="${cx}/toeeg" style="font-weight: 600;"  >运动想像EEG</a></div>

            <div><a href="${cx}/toface" style="font-weight: 600;"  class="bg" >面部情感数据</a></div>
            <div><a href="${cx}/toxiujue" style="font-weight: 600;"   >嗅觉情感数据</a></div>

        </div>
    </div>



    <div class="mainWrap list-lr" >
        <div class="list-l">
            <nav>
                <a >首页</a>&nbsp;&nbsp; -
                <a >公开数据集</a>&nbsp;&nbsp; - <a >面部情感数据</a>
            </nav>
            <h2>面部情感数据集<b></b></h2>
            <div class="twindex">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实验数据为在实验室内使用微软摄像头(30fps)采集的七类情感视频数据(“angry”,”disgust”,”fear”,”happy”,”sad”,”surprise” and “neutral”)。
                    受试者通过观看情感刺激视频以诱发情感的产生。
                    每类情感视频时长10s，每段视频均处理为情感序列。
                    受试者均为实验室研究生，实验在受试者裸眼情况下进行，实验在正常室光下、不同的光照强度下（包括干湿人脸）和不同的人脸偏转角度下进行。<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实验采集环境图如下所示：<br/>
                <div align="center"><img alt="实验范式" src="${cx}/resource/upload_files/image/image_video.jpg"/></div>
                </p>
              </div>
                <div class="twindex">
                   <p>

                    &nbsp;&nbsp;环境1为正常室光环境，环境2为额外增加的两个光源来改变光照，其中，
                a代表采集摄像头，b代表电脑屏幕，c表示电脑上播放的情感刺激视频，d表示受试者，e表示增加的两个光源。
                实验中通过控制光源的数量可以控制受试者所处环境的光照强度，此外通过控制受试者面部与摄像头之间的偏转角度获得不同偏转角度下的实验数据。<br/>
                备注：如遇数据下载问题，可直接和我们联系(sshiyong@126.com)，建议使用谷歌浏览器。
                      </p>
                </div>

        </div>
    </div>


</div>

<div class="content" role="toolbar">
    <div class="section section_0">
        <div class="mainWrap">
            <div class="section_0_1">
                <h2>面部情感数据集下载</h2>
                <ul id="ul_tnews">
                    <li><a href="${cx}/resource/video_motion.zip">面部情感数据集</a>
                    </li>
<%--                    <li><a href="">正面人脸不同光照条件</a>--%>
<%--                    </li>--%>
<%--                    <li><a href="">人脸角度偏转条件</a>--%>
<%--                    </li>--%>
<%--                    <li><a href="">干湿人脸条件</a>--%>
<%--                    </li>--%>
                </ul>
            </div>
        </div>
    </div>

</div>


<%@ include file="footer_iiphci.jsp"%>
</body>
</html>
