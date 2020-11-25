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

    <script type="text/javascript">
        $(window).load( function(){
            var html="";
            var html2="";
            var json= ${jsonArray};
            //var json = eval(res);
            var  jsonsub=json.lists;
            if(jsonsub.length > 0){
                for(var i = 0 ; i  < jsonsub.length ; i++){


                    var strUrl=jsonsub[i].url;
                    if(strUrl.indexOf("<a")!=-1)
                    {
                        html+="<li>"+jsonsub[i].url.replace(/@/g, "").replace(/\r\n/g, "").replace(/<br \/>/g, "").replace(/admin/g, "iiphci/").replace(/<p>/g, "").replace(/<\/p>/g, "")+"&nbsp;&nbsp;&nbsp;&nbsp;"+jsonsub[i].title.replace(/^\s+|\s+$/g,"")+"</li>";
                    }else
                    {
                        var str=strUrl.split("/");
                        var  strNewUrl="<a  href=\'/iiphci/editor/attached/file/"+strUrl+"'\>"+str[1]+"</a>";
                        html+="<li>"+strNewUrl+"&nbsp;&nbsp;&nbsp;&nbsp;"+jsonsub[i].title.replace(/^\s+|\s+$/g,"")+"</li>";
                    }

                }
            }
            $("#ul_tstudent").html(html);

            var page=json;

            var id=jsonsub[0].subjectid;
            if(page.totalPage>3)
            {
                var up=1;
                if(page.currPage>1) {
                    up= page.currPage - 1;
                }else
                {
                }
                var down=1;
                if(page.currPage==page.totalPage)
                {
                    down=page.totalPage;
                }else
                {
                    down=page.currPage+1;
                }
                var one=page.currPage + 1;
                var two=page.currPage + 2;
                var three=page.currPage + 3;

                if(one>page.totalPage) {
                    one = page.currPage - 3;
                    two = page.currPage - 2;
                    three = page.currPage - 1;
                    html2="<li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/1'>首页 </a></li><li class='disabled'><a href=''>当前页:"+page.currPage+" </a></li><li class='disabled'><a href=''>共"+page.totalPage+"页 </a></li><li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/"+up+"'>上一页</a></li><li class='active'><a href='${cx}/api/tResource/getStu/"+id+"/"+one+"'>"+one+"<span class='sr-only'></span></a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+two+"'>"+two+"</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+three+"'>"+three+"</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+down+"'>下一页</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+page.totalPage+"'>尾页</a></li>";
                }else if(two>page.totalPage)
                {
                    one=page.currPage - 1;
                    two=page.currPage ;
                    three=page.currPage + 1;
                    html2="<li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/1'>首页 </a></li><li class='disabled'><a href=''>当前页:"+page.currPage+" </a></li><li class='disabled'><a href=''>共"+page.totalPage+"页 </a></li><li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/"+up+"'>上一页</a></li><li class='active'><a href='${cx}/api/tResource/getStu/"+id+"/"+one+"'>"+one+"<span class='sr-only'></span></a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+two+"'>"+two+"</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+three+"'>"+three+"</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+down+"'>下一页</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+page.totalPage+"'>尾页</a></li>";

                }else if(three>page.totalPage)
                {
                    one=page.currPage;
                    two=page.currPage+1 ;
                    three=page.currPage + 2;

                   html2="<li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/1'>首页 </a></li><li class='disabled'><a href=''>当前页:"+page.currPage+" </a></li><li class='disabled'><a href=''>共"+page.totalPage+"页 </a></li><li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/"+up+"'>上一页</a></li><li class='active'><a href='${cx}/api/tResource/getStu/"+id+"/"+one+"'>"+one+"<span class='sr-only'></span></a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+two+"'>"+two+"</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+three+"'>"+three+"</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+down+"'>下一页</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+page.totalPage+"'>尾页</a></li>";
                }
                else
                {
                    html2="<li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/1'>首页 </a></li><li class='disabled'><a href=''>当前页:"+page.currPage+" </a></li><li class='disabled'><a href=''>共"+page.totalPage+"页 </a></li><li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/"+up+"'>上一页</a></li><li class='active'><a href='${cx}/api/tResource/getStu/"+id+"/"+one+"'>"+one+"<span class='sr-only'></span></a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+two+"'>"+two+"</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+three+"'>"+three+"</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+down+"'>下一页</a></li><li><a href='${cx}/api/tResource/getStu/"+id+"/"+page.totalPage+"'>尾页</a></li>";

                }
            }
            else
            {
                switch (page.totalPage) {
                    case 1:
                        html2="<li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/1'>1</a></li>";
                        break;
                    case 2:
                        html2="<li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/1'>1</a></li><li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/2'>2</a></li>";
                        break;
                    case 3:
                        html2="<li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/1'>1</a></li><li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/2'>2</a></li><li class='disabled'><a href='${cx}/api/tResource/getStu/"+id+"/3'>3</a></li>";
                        break;
                    default:
                        break
                }
            }

            $("#contr").html(html2);


        } );
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
        <h3>运动想像EEG数据下载</h3>
    </div>



    <div class="mainWrap list-lr" >
        <div class="list-l">
            <nav>
                <a href="index">首页</a>&nbsp;&nbsp; -
                <a href="team">公开数据集</a>&nbsp;&nbsp; - <a href="staff">运动想像EEG</a>
            </nav>
            <h2>运动想像EEG数据下载<b></b></h2>

            <div class="content" role="toolbar">
                <div class="section section_0">
                    <div class="mainWrap">
                        <div class="section_0_1">
                            <ul id="ul_tstudent">
                                <li><a href="/index/api/tNews/toNewsInfo/7">受试者OYR★</a>
                                    <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                                </li>
                            </ul>
                            <nav>
                                <ul class="pagination" id="contr">
                                    <li class="disabled">
                                        <a href="#">首页 </a>
                                    </li>
                                    <li class="disabled">
                                        <a href="#">上一页 </a>
                                    </li>
                                    <li class="active">
                                        <a href="#">1<span class="sr-only"></span></a>
                                    </li>
                                    <li>
                                        <a href="/student/student/list?page=2&amp;size=10">2</a>
                                    </li>
                                    <li>
                                        <a href="/student/student/list?page=3&amp;size=10">3</a>
                                    </li>
                                    <li>
                                        <a href="/student/student/list?page=4&amp;size=10">4</a>
                                    </li>
                                    <li>
                                        <a href="/student/student/list?page=5&amp;size=10">5</a>
                                    </li>
                                    <li>
                                        <a href="/student/student/list?page=2&amp;size=10">下一页</a>
                                    </li>
                                    <li>
                                        <a href="/student/student/list?page=5">尾页</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>


</div>

<%--<div class="content" role="toolbar">--%>
<%--    <div class="section section_0">--%>
<%--        <div class="mainWrap">--%>
<%--            <div class="section_0_1">--%>
<%--                <ul id="ul_tnews">--%>
<%--                    <li><a href="/index/api/tNews/toNewsInfo/7">受试者OYR★</a>--%>
<%--                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>--%>
<%--                    </li>--%>
<%--                    <li><a href="/index/api/tNews/toNewsInfo/7">受试者LJL★</a>--%>
<%--                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>--%>
<%--                    </li>--%>
<%--                    <li><a href="/index/api/tNews/toNewsInfo/7">受试者RJ★</a>--%>
<%--                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>--%>
<%--                    </li>--%>
<%--                    <li><a href="/index/api/tNews/toNewsInfo/7">受试者CB★</a>--%>
<%--                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--                <nav>--%>
<%--                    <ul class="pagination">--%>
<%--                        <li class="disabled">--%>
<%--                            <a href="#">首页 </a>--%>
<%--                        </li>--%>
<%--                        <li class="disabled">--%>
<%--                            <a href="#">上一页 </a>--%>
<%--                        </li>--%>
<%--                        <li class="active">--%>
<%--                            <a href="#">1<span class="sr-only"></span></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="/student/student/list?page=2&amp;size=10">2</a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="/student/student/list?page=3&amp;size=10">3</a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="/student/student/list?page=4&amp;size=10">4</a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="/student/student/list?page=5&amp;size=10">5</a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="/student/student/list?page=2&amp;size=10">下一页</a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="/student/student/list?page=5">尾页</a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </nav>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--</div>--%>




<%@ include file="footer_iiphci.jsp"%>

</body>
</html>
