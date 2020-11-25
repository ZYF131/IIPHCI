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

    <script type="text/javascript">
        $(window).load( function(){
            var html="";
            var html2="";
            var json= ${asd};
            //var json = eval(asd);
            var  jsonsub=json;
            var tname=jsonsub.tname;
                    html+="<h1>"+tname+" <span>博士</span></h1>";
            var jobtitle=jsonsub.jobtitle;
                   html+="<h2>安徽大学 "+jobtitle+"</h2>             <table cellspacing=\"0\" cellpadding=\"0\" class=\"tby\" style=\"border: none;\">\n" +
                       "                <tbody>\n" +
                       "                    <tr class=\"firstRow\">";
            var learningexperience=jsonsub.learningexperience;
            var ls = learningexperience.split("\r\n");
            if(ls.length>0)
            {
                for(var i=0;i<ls.length;i++)
                {
                    var lls=ls[i].split(" ");

                    html+="<td width=\"120\" style=\"word-break: break-all;\">"+lls[0]+"</td>";
                    html+="<td class=\"date info\" style=\"word-break: break-all;\">"+lls[1]+"</td>";
                    html+="</tr><tr>";
                }
            }

            html+=" </tr>\n" +
                "                </tbody>\n" +
                "            </table> <h3>研究兴趣和领域</h3>";

            var researchdirection=jsonsub.researchdirection;
            var rd = researchdirection.split("\r\n");
            if(rd.length>0)
            {
                for(var i=0;i<rd.length;i++)
                {

                    html+="<p>"+rd[i]+"</p>";

                }
            }

            html+="<h3>个人简历</h3>";
            var resume=jsonsub.resume;
            html+="<p>"+resume+"</p>";


            html+="<h3>主持课题名称</h3>";
            var subjectname=jsonsub.subjectname;

            var sn=subjectname.split("\r\n");
            if(sn.length>0)
            {
                for(var i=0;i<sn.length;i++)
                {

                    html+="<p>"+sn[i]+"</p>";

                }
            }

            html+="<h3>代表性论文</h3>";
            var repersentativepapers=jsonsub.repersentativepapers;

            var rp=repersentativepapers.split("\r\n");
            if(rp.length>0)
            {
                for(var i=0;i<rp.length;i++)
                {

                    html+="<p>"+rp[i]+"</p>";

                }
            }

            html+="<h3>获奖情况</h3>";
            var awarded=jsonsub.awarded;

            var ad=awarded.split("\r\n");
            if(ad.length>0)
            {
                for(var i=0;i<ad.length;i++)
                {

                    html+="<p>"+ad[i]+"</p>";

                }
            }

            html+="<h3>部分授权专利</h3>";
            var patent=jsonsub.patent;

            var pa=patent.split("\r\n");
            if(pa.length>0)
            {
                for(var i=0;i<pa.length;i++)
                {

                    html+="<p>"+pa[i]+"</p>";

                }
            }

            html+="<h3>在研项目</h3>";
            var researchingproject=jsonsub.researchingproject;

            var rp=researchingproject.split("\r\n");
            if(rp.length>0)
            {
                for(var i=0;i<rp.length;i++)
                {

                    html+="<p>"+rp[i]+"</p>";

                }
            }

            html+="<h3>联系方式</h3>";
            var email=jsonsub.email;

            html+="<p>地址：安徽省合肥市蜀山区九龙路111号安徽大学磬苑校区理工D楼505室</p><p>邮箱："+email+"</p>";


            $("#xuanze").html(html);

        })


        //加载初始化数据

    </script>
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

            <nav>
                <a >首页</a>&nbsp;&nbsp; -
                <a >实验室团队</a>&nbsp;&nbsp; -
                <a >实验室老师</a>
            </nav>
        <h2>实验室老师<b></b></h2>

        <div class="jszp">
            <img src="${cx}/resource/upload_files/image/tt3.png">
        </div>
        <div id="xuanze" class="jsnr">

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
