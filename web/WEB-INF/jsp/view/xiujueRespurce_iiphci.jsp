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

            <div><a href="${cx}/toface" style="font-weight: 600;"  >面部情感数据</a></div>
            <div><a href="${cx}/toxiujue" style="font-weight: 600;"  class="bg"  >嗅觉情感数据</a></div>

        </div>
    </div>



    <div class="mainWrap list-lr" >
        <div class="list-l">
            <nav>
                <a href="index">首页</a>&nbsp;&nbsp; -
                <a href="team">公开数据集</a>&nbsp;&nbsp; - <a href="staff">嗅觉情感数据</a>
            </nav>
            <h2>嗅觉情感数据集<b></b></h2>
            <div class="twindex">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    The experimental data were 32 channnel emotional EEG collected by Brain Produce, the EEG sampling frequency is 250 Hz. The emotional classification of the database is divided into three categories (positive, neutral, negative). Each subject performs the experiment with odor-video mixed stimulus and only video stimulus. The experiment was carried out under normal room light ventilation contion. The experimental environment is shown in the figure. 1.
                    <br/>
                <div align="center"><img alt="实验范式" src="${cx}/resource/upload_files/image/嗅觉资源.jpg"/></div></p>
            </div>
            <div class="twindex">
               <p> &nbsp;&nbsp;The details of protocol used in our emotion elicitation were presented in Fig.2. Each trial was made up of 3-second hinting process of start, play of the video clip, 5-second of feedback after watching video and then 15 s resting process. Each subject had a different sample size for each type of emotion, although we provide the same stimulus, this is because subjects preformed a self-assessment of their levels of arousal and valence after the end of each trial.
                There were four copies of data for each participant, the original EEG data under two kinds of stimulus and processed EEG data under two stimuli respectively, and 1 stand for positive, 2 stand for neutral, 3 stand for negative.
                <br/>
               &nbsp;&nbsp;P.S. If you encounter data download problem, please contact us directly (946971766@qq.com), and internet explorer is recommended。<br/>
               </p>
            </div>
                </div>

        </div>
    </div>




<div class="content" role="toolbar">
    <div class="section section_0">
        <div class="mainWrap">
            <div class="section_0_1">
                <h2>嗅觉情感数据集下载</h2>
                <ul id="ul_tnews">
                    <li><a href="${cx}/resource/xiujue_motion.zip" >嗅觉情感数据集</a>
                    </li>
<%--                    <li><a href="">Original EEG Data-VS</a>--%>
<%--                    </li>--%>
<%--                    <li><a href="">Processed EEG Data-V</a>--%>
<%--                    </li>--%>
<%--                    <li><a href="">Processed EEG Data-VS</a>--%>
<%--                    </li>--%>
                </ul>
            </div>
        </div>
    </div>

</div>


<%@ include file="footer_iiphci.jsp"%>
</body>
</html>
