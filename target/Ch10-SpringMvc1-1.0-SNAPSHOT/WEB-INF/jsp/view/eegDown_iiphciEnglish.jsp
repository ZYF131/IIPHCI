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
            //var json=page.list;

              var  jsonsub=json.lists;
                for(var i = 0 ; i  < jsonsub.length ; i++){

                    html+="<li><a href='${cx}/api/tResource/getStuEnglish/"+jsonsub[i].subid+"/1'>"+jsonsub[i].enabname+"</a><b><bstyle='float: right; font-weight: normal;'></b></li>";

                }
                $("#ul_tstudent").html(html);

               var page=json;

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
                    if(one>page.totalPage)
                    {
                        one=page.currPage - 3;
                        two=page.currPage - 2;
                        three=page.currPage - 1;
                        html2+="<li class='disabled'><a href='${cx}/api/subjectinfo/getStuEnglish/1'>Home</a></li><li class='disabled'><a href=''>Current page:"+page.currPage+" </a></li><li class='disabled'><a href=''>Total:"+page.totalPage+"</a></li><li class='disabled'><a href='${cx}/api/subjectinfo/getStuEnglish/"+up+"'>Previous</a></li><li class='active'><a href='${cx}/api/subjectinfo/getStuEnglish/"+one+"'>"+one+"<span class='sr-only'></span></a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+two+"'>"+two+"</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+three+"'>"+three+"</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+down+"'>Next</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+page.totalPage+"'>Last</a></li>";
                    }
                    else if(two>page.totalPage)
                    {
                        one=page.currPage - 1;
                        two=page.currPage ;
                        three=page.currPage + 1;
                        html2+="<li class='disabled'><a href='${cx}/api/subjectinfo/getStuEnglish/1'>Home </a></li><li class='disabled'><a href=''>Current page:"+page.currPage+" </a></li><li class='disabled'><a href=''>Total:"+page.totalPage+"</a></li><li class='disabled'><a href='${cx}/api/subjectinfo/getStuEnglish/"+up+"'>Previous</a></li><li class='active'><a href='${cx}/api/subjectinfo/getStuEnglish/"+one+"'>"+one+"<span class='sr-only'></span></a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+two+"'>"+two+"</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+three+"'>"+three+"</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+down+"'>Next</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+page.totalPage+"'>Last</a></li>";

                    }else  if(three>page.totalPage)
                    {
                        one=page.currPage;
                        two=page.currPage+1 ;
                        three=page.currPage + 2;

                        html2+="<li class='disabled'><a href='${cx}/api/subjectinfo/getStuEnglish/1'>Home </a></li><li class='disabled'><a href=''>Current page:"+page.currPage+" </a></li><li class='disabled'><a href=''>Total:"+page.totalPage+" </a></li><li class='disabled'><a href='${cx}/api/subjectinfo/getStuEnglish/"+up+"'>Previous</a></li><li class='active'><a href='${cx}/api/subjectinfo/getStuEnglish/"+one+"'>"+one+"<span class='sr-only'></span></a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+two+"'>"+two+"</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+three+"'>"+three+"</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+down+"'>Next</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+page.totalPage+"'>Last</a></li>";

                    }else
                    {
                        html2+="<li class='disabled'><a href='${cx}/api/subjectinfo/getStuEnglish/1'>Home </a></li><li class='disabled'><a href=''>Current page:"+page.currPage+" </a></li><li class='disabled'><a href=''>Total:"+page.totalPage+"</a></li><li class='disabled'><a href='${cx}/api/subjectinfo/getStuEnglish/"+up+"'>Previous</a></li><li class='active'><a href='${cx}/api/subjectinfo/getStuEnglish/"+one+"'>"+one+"<span class='sr-only'></span></a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+two+"'>"+two+"</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+three+"'>"+three+"</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+down+"'>Next</a></li><li><a href='${cx}/api/subjectinfo/getStuEnglish/"+page.totalPage+"'>Last</a></li>";

                    }

                }

                $("#ul_di").html(html2);

        } );

    </script>

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
        <h3>Motor Imagery EEG Data Download</h3>
    </div>



    <div class="mainWrap list-lr" >
        <div class="list-l">
            <nav>
                <a href="index">Home Page</a>&nbsp;&nbsp; -
                <a href="team">Data Resources</a>&nbsp;&nbsp; - <a href="staff">Motor Imagery EEG Data</a>
            </nav>
            <h2>Motor Imagery EEG Data Download<b></b></h2>

            <div class="content" role="toolbar">
                <div class="section section_0">
                    <div class="mainWrap">
                        <div class="section_0_1">
                            <ul id="ul_tstudent">

                                    <li><a href="/api/tResource/getAllByEnglish/${u.subid}"> Subject OYR★${u.enabname }</a>
                                        <b style="float: right; font-weight: normal;"><i class="thunews-clock-o"></i></b>
                                    </li>

                            </ul>
                            <nav>
                                <ul class="pagination" id="ul_di">
                                            <li class="disabled">
                                                <a href="${cx}/api/subjectinfo/getStuEnglish/1">Homa Page </a>
                                            </li>
                                            <li class="disabled">
                                                <a href="${cx}/api/subjectinfo/getStuEnglish/${requestScope.pagemsg.currPage-1}">Previous </a>
                                            </li>
                                            <li class="active">
                                                <a href="#">1<span class="sr-only"></span></a>
                                            </li>
                                            <li>
                                                <a href="${cx}/api/subjectinfo/getAll/2">2</a>
                                            </li>
                                            <li>
                                                <a href="${cx}/api/subjectinfo/getAll/3">3</a>
                                            </li>
                                                <li>
                                                    <a href="${cx}/api/subjectinfo/getStuEnglish?currentPage=${page.currPage+1}">Next</a>
                                                </li>
                                                <li>
                                                    <a href="${cx}/api/subjectinfo/getStuEnglish?currentPage=${page.totalPage}">Last</a>
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




<%@ include file="footer_iiphciEnglish.jsp"%>

</body>
</html>
