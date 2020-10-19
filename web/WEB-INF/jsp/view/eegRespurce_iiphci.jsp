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

            <div><a href="${cx}/toeeg" style="font-weight: 600;" class="bg" >运动想像EEG</a></div>

            <div><a href="${cx}/toface" style="font-weight: 600;"   >面部情感数据</a></div>
            <div><a href="${cx}/toxiujue" style="font-weight: 600;"   >嗅觉情感数据</a></div>

        </div>
    </div>



    <div class="mainWrap list-lr" >
        <div class="list-l">
            <nav>
                <a href="index">首页</a>&nbsp;&nbsp; -
                <a href="team">公开数据集</a>&nbsp;&nbsp; - <a href="staff">运动想像EEG</a>
            </nav>
            <h2>运动想像EEG数据(国家自然科学基金资助61271352)<b></b></h2>
            <div class="twindex">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实验数据为Neuroscan放大器采集的16导和26导运动想象脑电(Motor imagery electroencephalogram，MIEEG)。
                    原始EEG采样频率为250Hz，0.1-100Hz带通滤波，50Hz陷波滤波。
                    按标准运动想象实验范式采集的每个数据集中包含75个单次试验(trial)，
                    其中左手、右手和脚运动想象各25个（单次试验次数可能有少量偏差）。
                    文件命名规则为受试者姓名的大写首字母+采集时间+电极帽标识。
                    受试者姓名的大写首字母+采集时间+RLFT+电极帽标识的是四分类，RLF为左右脚运动想象，T为舌头真实运动。<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实验数据采集参数及相关细节如下：<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a)受试者：实验室研究生和本科生，身体健康，无脑疾病史。<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b)EEG导联：16导： VEOU，VEOL，Fp1，Fp2， FC3，FCZ，FC4，C3，CZ，C4，CP3，CPZ，CP4，O1，OZ，O2；
                    <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;26导：Fp1，Fp2，F3，Fz，F4，FT7，FC3，FCZ，FC4，FT8，T3，C3，CZ，C4，T4，TP7，CP3，CPZ，CP4，TP8，P3，Pz，P4，O1，OZ，O2
                    参考电极为A1/A2。<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c)数据精度：16bit。<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d)数据格式：CNT。<br/>
                    <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全部上传数据均经过测试。研究者在首次使用该数据时，
                    可先用BCILAB (https://sccn.ucsd.edu/wiki/BCILAB)对原始MIEEG数据进行测试，以验证数据的可靠性。
                    BCI测试参数设置(建议，但也许不是最优)：<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;导联:    5:13(FC3，FCz，FC4，C3，Cz，C4，CP3，CPz，CP4)。<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;方法：   common spatial pattern。<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;滤波参数： 10-14Hz， (ps: 受试者OYR数据集的滤波器参数：12-16Hz)<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ERD/ERS时间段:   0.5-5s<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参考文献：<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.吴小培, 周蚌艳, 张磊,等. 运动想象脑-机接口中的ICA滤波器设计[J]. 生物物理学报 2014, 30(7):540-554.2014,30(7): 550-554.<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.Bangyan Zhou, Xiaopei Wu , Zhao Lv, Lei Zhang, Xiaojin Guo, A Fully Automated Trial
                    Selection Method for Optimization of <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Motor Imagery Based Brain-Computer Interface.
                    PLoS ONE 2016.11(9): e0162657<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;运动想象实验范式和电极分布如下图所示。<br/>
                <div align="center"><img alt="实验范式" src="${cx}/resource/upload_files/image/1_eeg.jpg"/></div>
                <div align="center"><img alt="实验范式" src="${cx}/resource/upload_files/image/2_eeg.jpg"/><img alt="实验范式" src="${cx}/resource/upload_files/image/3_eeg.jpg"/></div>
                备注：如遇数据下载问题，可直接和我们联系(wxp2001@ahu.edu.cn)，建议使用谷歌浏览器。</p>
            </div>
        </div>
    </div>


</div>

<div class="content" role="toolbar">
    <div class="section section_0">
        <div class="mainWrap">
            <div class="section_0_1">
                <h2>运动想像EEG数据下载</h2>
                <ul id="ul_tnews">
                    <li><a href="${cx}/api/tResource/getStu/1/1">受试者OYR★</a>
                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                    </li>
                    <li><a href="${cx}/api/tResource/getStu/2/1">受试者LJL★</a>
                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                    </li>
                    <li><a href="${cx}/api/tResource/getStu/3/1">受试者RJ★</a>
                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                    </li>
                    <li><a href="${cx}/api/tResource/getStu/4/1">受试者CB★</a>
                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                    </li>
                </ul>
                <a href="${cx}/api/subjectinfo/getStu/1" class="more_0">更多</a>
            </div>
        </div>
    </div>

</div>


<%@ include file="footer_iiphci.jsp"%>
</body>
</html>
