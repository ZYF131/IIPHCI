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
<%@ include file="header_iiphciEnglish.jsp"%>
<div class="content">


    <style>
        .se-nav .se-secondnav div .bg {
            background: #B7A57A;
            color: #fff;
            padding:5px 16px;
        }

    </style>

    <div class="se-nav" style="background:url(${cx}/resource/res/sites/images/twain-bg.png) no-repeat;background-size: cover;">
        <h3>Data Resources</h3>
        <div class="se-secondnav">
            <div><a href="${cx}/toeegEnglish" style="font-weight: 600;" >Motor Imagery EEG Data</a></div>

            <div><a href="${cx}/user/tofaceEnglish" style="font-weight: 600;"   class="bg"  >Facial Expressions Video Data</a></div>

        </div>
    </div>




    <div class="mainWrap list-lr" >
        <div class="list-l">
            <nav>
                <a href="index">Home Page</a>&nbsp;&nbsp; -
                <a href="team">Data Resources</a>&nbsp;&nbsp; - <a href="staff">Facial Expressions Video Data</a>
            </nav>
            <h2>Facial Expressions Video Data set<b></b></h2>
            <div class="twindex">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The data were collected by Microsoft Camera with a 30fps frame rate from seven types of emotional states
                    (i.e. "angry", "disgust", "fear", "happy", "sad", "surprise" and "neutral"). The subject’s facial expressions were induced by watching different emotional
                    stimuli videos. Each kind of stimuli video lasted for 10 seconds, and was processed into an emotional sequence. All of the subjects were graduate students
                    from the laboratory and they all done the experiments with naked eyes under three different conditions
                    (i.e., illumination, face pose, and facial moisture).<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A demonstration of the experimental scenes is shown in Fig.1:<br/>
                <div align="center"><img alt="实验范式" src="${cx}/resource/upload_files/image/image_video_english.png"/></div>
                <div align="center">Fig. 1 Demonstration of the experimental scenes</div>
                </p>
              </div>
                <div class="twindex">
                   <p>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In this figure, scene 1 and scene 2 respectively indicate the normal illumination environment and changed
                       illumination with two additional lamps, which were separately placed on the left and right of the screen at 5cm. And the yellow letters in Fig.1
                       can be shown as follows: (a) the collection camera, (b) the computer screen, (c) the stimuli video, (d) the subject, and (e) two additional lamps.
                       During the experiments, we can control the illumination intensity around the subject by adjusting the number of additional lamps, and also can change
                       different deflection angles (less than 25 degrees) between the camera and the subject’s face to obtain the
                       non-frontal facial video data.<br/>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Note: If you have any issues or questions about data download, please contact us directly (sshiyong@126.com).
                       Here, in order to ensure that you can normally access the website, we recommend using IE browser.<br/>
                      </p>
                </div>

        </div>
    </div>


</div>

<div class="content" role="toolbar">
    <div class="section section_0">
        <div class="mainWrap">
            <div class="section_0_1">
                <h2>Download</h2>
                <ul id="ul_tnews">
                    <li><a href="">Normal room light condition</a>
                    </li>
                    <li><a href="">Different lighting conditions on the front face</a>
                    </li>
                    <li><a href="">Face angle deflection condition</a>
                    </li>
                    <li><a href="">Wet and dry face conditions</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</div>


<%@ include file="footer_iiphciEnglish.jsp"%>
</body>
</html>
