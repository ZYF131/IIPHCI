<%--
  Created by IntelliJ IDEA.
  User: zhou
  Date: 2020/9/3
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>安徽大学-智能信息处理与人机交互实验室</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="${cx}/resource/res/sites/images/favicon.ico"/>
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
        <h3>实验室团队</h3>
        <div class="se-secondnav">

            <div><a href="${cx}/toStaff" style="font-weight: 600;" class="bg"  >实验室老师</a></div>

            <div><a href="${cx}/toDoctorStaff" style="font-weight: 600;"  >实验室在读博士</a></div>

            <div><a href="${cx}/toMasterStaff" style="font-weight: 600;"  >实验室在读硕士</a></div>

        </div>
    </div>



    <div class="mainWrap list-lr" style=" position: relative;">
        <div class="list-l">
            <nav>
                <a href="index">首页</a>&nbsp;&nbsp; -
                <a href="team">实验室团队</a>&nbsp;&nbsp; - 		<a href="staff">实验室人员</a>				</nav>			<h2>实验室老师<b></b></h2>
            <div class="imglist">
                <ul class="lecturelist clearfix">
                    <li class="yjry_list">
                        <a href="http://cs.ahu.edu.cn/2018/0322/c11201a163141/page.htm" target="_blank" >
                            <img src="${cx}/resource/upload_files/image/tt4.png" alt="">
                            <h3 title="">吴小培 教授</h3>
                            <span>机器学习与脑-机接口技术</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a href="http://cs.ahu.edu.cn/2018/0322/c11201a163196/page.htm" target="_blank" >
                            <img src="${cx}/resource/upload_files/image/tt3.png" alt="">
                            <h3 title="">吕钊 教授</h3>
                            <span>智能信息处理与人-机交互技术</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a href="http://cs.ahu.edu.cn/2020/0706/c11202a241235/page.htm" target="_blank" >
                            <img src="${cx}/resource/upload_files/image/tt5.png" alt="">
                            <h3 title="">张超 讲师</h3>
                            <span>智能信息处理，多媒体信息处理</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/tt2.png" alt="">
                            <h3 title="">郭晓静 讲师</h3>
                            <span>智能信息处理与人-机交互技术</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/tt1.png" alt="">
                            <h3 title="">高湘萍 讲师</h3>
                            <span>智能信息处理与人-机交互技术</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/tt7.png" alt="">
                            <h3 title="">张磊 讲师</h3>
                            <span>智能信息处理与人-机交互技术</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                          <a>
                            <img src="${cx}/resource/upload_files/image/tt8.png" alt="">
                            <h3 title="">周蚌艳 讲师</h3>
                            <span>智能信息处理与人-机交互技术</span>
                          </a>
                    </li>
                    <li class="yjry_list">
                          <a>
                            <img src="${cx}/resource/upload_files/image/裴胜兵.png" alt="">
                            <h3 title="">裴胜兵 讲师</h3>
                            <span>医学影像数据分析</span>
                          </a>
                    </li>
                    <li class="yjry_list">
                            <a>
                            <img src="${cx}/resource/upload_files/image/李平.png" alt="">
                            <h3 title="">李平 讲师</h3>
                            <span>智能物联网通信</span>
                            </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/胡世昂.png" alt="">
                            <h3 title="">胡世昂 讲师</h3>
                            <span>脑认知机制与脑工程</span>
                        </a>
                    </li>
                </ul>
            </div>





            <style>
                .text-center{position: absolute;bottom: 60px;right: 59%;}
                .pagination li a{text-align: center;margin-left: 5px; background:rgba(183,165,122,.8); color: #1F1541;font-size:14px; padding:14px 16px; }
                .pagination{list-style-type: none;display: inline-flex;}
                .pagination li .current:hover {background-color:#654482;color: #fff;}
                .pagination li .current {background-color:#654482;color: #fff; border-color: #e84c3d;}

            </style>
            <div class="row text-center">

                <ul class="pagination">
                </ul>
            </div>



            <div style="margin: 0 auto;height: 100px;width: 22%;">

            </div>
        </div>

    </div>

</div>
<%@ include file="footer_iiphci.jsp"%>
</body>
</html>
