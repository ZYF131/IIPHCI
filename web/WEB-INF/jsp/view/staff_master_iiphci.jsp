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
    <link rel="shortcut icon" type="image/x-icon" href="${cx}/resource/res/sites/images/favicon.ico"/　>
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

            <div><a href="${cx}/toStaff" style="font-weight: 600;"  >实验室老师</a></div>

            <div><a href="${cx}/toDoctorStaff" style="font-weight: 600;" >实验室在读博士</a></div>

            <div><a href="${cx}/toMasterStaff" style="font-weight: 600;"  class="bg"  >实验室在读硕士</a></div>

        </div>
    </div>







    <div class="mainWrap list-lr" style=" position: relative;">
        <div class="list-l">
            <nav>
                <a href="index">首页</a>&nbsp;&nbsp; -
                <a href="team">实验室团队</a>&nbsp;&nbsp; - 		<a href="staff">实验室人员</a>				</nav>			<h2>实验室在读硕士<b></b></h2>
            <div class="imglist">
                <ul class="lecturelist clearfix">
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/陈文伟.png" alt="">
                            <h3 title="">陈文伟</h3>
                            <span>硕士三年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/薛敬怡.png" alt="">
                            <h3 title="">薛敬怡</h3>
                            <span>硕士三年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/薛冰.png" alt="">
                            <h3 title="">薛冰</h3>
                            <span>硕士三年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/周永泰.png" alt="">
                            <h3 title="">周永泰</h3>
                            <span>硕士三年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/王伟.png" alt="">
                            <h3 title="">王伟</h3>
                            <span>硕士三年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a href="https://zyf131.github.io/wode/views/about/page.html" target="_blank" >
                            <img src="${cx}/resource/upload_files/image/周叶凡.png" alt="">
                            <h3 title="">周叶凡</h3>
                            <span>硕士三年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/许珂.png" alt="">
                            <h3 title="">许珂</h3>
                            <span>硕士三年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/佘文祥.png" alt="">
                            <h3 title="">佘文祥</h3>
                            <span>硕士三年级</span>
                        </a>
                    </li>

                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/段昊祺.png" alt="">
                            <h3 title="">段昊祺</h3>
                            <span>硕士二年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/耿基栋.png" alt="">
                            <h3 title="">耿基栋</h3>
                            <span>硕士二年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/郭梦园.png" alt="">
                            <h3 title="">郭梦园</h3>
                            <span>硕士二年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/黄璜.png" alt="">
                            <h3 title="">黄璜</h3>
                            <span>硕士二年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/骆向阳.png" alt="">
                            <h3 title="">骆向阳</h3>
                            <span>硕士二年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/沈超.png" alt="">
                            <h3 title="">沈超</h3>
                            <span>硕士二年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/王坤.png" alt="">
                            <h3 title="">王坤</h3>
                            <span>硕士二年级</span>
                        </a>
                    </li>

                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/杜晨晓.png" alt="">
                            <h3 title="">杜晨晓</h3>
                            <span>硕士二年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/张昊.png" alt="">
                            <h3 title="">张昊</h3>
                            <span>硕士二年级</span>
                        </a>
                    </li>


                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/张振飞.png" alt="">
                            <h3 title="">张振飞</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/陈乐.png" alt="">
                            <h3 title="">陈乐</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/张坤.png" alt="">
                            <h3 title="">张坤</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/吴蕊.png" alt="">
                            <h3 title="">吴蕊</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/高晴.png" alt="">
                            <h3 title="">高晴</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/施晨韵.png" alt="">
                            <h3 title="">施晨韵</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/聂士佳.png" alt="">
                            <h3 title="">聂士佳</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>

                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/王超群.png" alt="">
                            <h3 title="">王超群</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/邢梦侠.png" alt="">
                            <h3 title="">邢梦侠</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>


                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/戴政涛.png" alt="">
                            <h3 title="">戴政涛</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/高仞川.png" alt="">
                            <h3 title="">高仞川</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/曹丹丹.png" alt="">
                            <h3 title="">曹丹丹</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/张雪松.png" alt="">
                            <h3 title="">张雪松</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/滕维.png" alt="">
                            <h3 title="">滕维</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>

                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/肖笛.png" alt="">
                            <h3 title="">肖笛</h3>
                            <span>硕士一年级</span>
                        </a>
                    </li>
                    <li class="yjry_list">
                        <a>
                            <img src="${cx}/resource/upload_files/image/吕杨.png" alt="">
                            <h3 title="">吕杨</h3>
                            <span>硕士一年级</span>
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
