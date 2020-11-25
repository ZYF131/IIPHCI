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
            <div><a href="${cx}/toeegEnglish" style="font-weight: 600;" class="bg" >Motor Imagery EEG Data</a></div>

            <div><a href="${cx}/user/tofaceEnglish" style="font-weight: 600;"   >Facial Expressions Video Data</a></div>

        </div>
    </div>



    <div class="mainWrap list-lr" >
        <div class="list-l">
            <nav>
                <a >Home Page</a>&nbsp;&nbsp; -
                <a >Data Resources</a>&nbsp;&nbsp; - <a >Motor Imagery EEG Data</a>
            </nav>
            <h2>Motor Imagery Electroencephalogram (MIEEG) Data<b></b></h2>
            <div style="font-size:10px;text-align:center">(This work was funded by the National Natural Science Foundation of China under the grant 61271352)</div>
            <div class="twindex">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The data were recorded by the Neuroscan amplifier settings with 16 and 26 EEG channels from three different motor imagery tasks,
                    including left hand(class 1), right hand(class 2) and foot(class 3). The original MIEEG recordings were sampled with 250Hz and bandpass-filtered between 0.1Hz and 100Hz.
                    An additional notch filter at 50Hz was enabled. According to the standard MIEEG experimental paradigm, illustrated in Fig.1, each run consists of 75 trials
                    (25 for each of the three possible classes) and there may be a small deviation in the number of trials. The data file naming convention (e.g OYR_20190418_cap4_no2)
                    can be described as: Capital initials of the subject's name _ Date of sampling _ Tab of selected electrode cap_ Data number of each run. <br/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Some parameters of data acquisition and experimental details are as follows:<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Subjects: the graduate students and undergraduate students from the lab, who are all healthy and without brain disease.<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) The location of scalp EEG electrodes: <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16 monopolar electrodes: VEOU, VEOL, Fp1, Fp2, FC3, FCZ, FC4, C3, CZ, C4, CP3, CPZ, CP4, O1, OZ, O2;
                    <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;26 monopolar electrodes: Fp1, Fp2, F3, Fz, F4, FT7, FC3, FCZ, FC4, FT8, T3, C3, CZ, C4, T4, TP7, CP3, CPZ, CP4, TP8, P3, Pz, P4, O1 , OZ, O2   The reference electrode is A1/A2.<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Data accuracy: 16 bits.<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Data format: .CNT.<br/>
                    <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All uploaded data has been tested. When using the data for the first time, you may test the original MIEEG data with BCILAB
                    (https://sccn.ucsd.edu/wiki/BCILAB) to verify the reliability of the data. While they may not be the optimal, the parameter settings on BCILAB
                    just were recommended as follows:：<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EEG channels: 5:13 (FC3, FCz, FC4, C3, Cz, C4, CP3, CPz, CP4).<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Method: common spatial pattern(CSP).<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Filtering parameter: 10~14Hz (For the data of subject OYR, the filtering parameter was 12~16Hz)<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time period of ERD/ERS: 0.5~5s.<br/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;References:<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [1] Wu Xiaopei, Zhou bengyan, Zhang Lei, et al. ICA Filter Design in Brain-Computer Interface of Motor Imagery[J]. ACTA <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BIOPHYSICA SINICA 2014, 30(7): 550-554. <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[2] Bangyan Zhou, Xiaopei Wu , Zhao Lv, Lei Zhang, Xiaojin Guo, A Fully Automated Trial Selection Method for Optimization <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;of Motor Imagery Based Brain-Computer Interface. PLoS ONE 2016, 11(9): e0162657<br/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The experimental paradigm of MIEEG and the location of scalp EEG electrodes are respectively shown in Fig.1 and Fig.2.<br/>
                <div align="center"><img alt="实验范式" src="${cx}/resource/upload_files/image/paradigm_english.png"/></div>
                <div align="center"><img alt="实验范式" src="${cx}/resource/upload_files/image/electrode_english.png"/><img alt="实验范式" src="${cx}/resource/upload_files/image/electrode2_english.png"/></div>
                Note: If you have any issues or questions about data download, please contact us directly (wxp2001@ahu.edu.cn). Here, in order to ensure that you can normally access the website, we recommend using IE browser.</p>
            </div>
        </div>
    </div>


</div>

<div class="content" role="toolbar">
    <div class="section section_0">
        <div class="mainWrap">
            <div class="section_0_1">
                <h2>MIEEG Data Download</h2>
                <ul id="ul_tnews">
                    <li><a href="${cx}/api/tResource/getStuEnglish/1/1">Subject OYR★</a>
                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                    </li>
                    <li><a href="${cx}/api/tResource/getStuEnglish/2/1">Subject LJL★</a>
                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                    </li>
                    <li><a href="${cx}/api/tResource/getStuEnglish/3/1">Subject RJ★</a>
                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                    </li>
                    <li><a href="${cx}/api/tResource/getStuEnglish/4/1">Subject CB★</a>
                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                    </li>
                </ul>
                <a href="${cx}/api/subjectinfo/getStuEnglish/1" class="more_0">more</a>
            </div>
        </div>
    </div>

</div>


<%@ include file="footer_iiphciEnglish.jsp"%>
</body>
</html>
