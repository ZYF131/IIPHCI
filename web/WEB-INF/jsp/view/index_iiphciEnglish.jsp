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
    <title>Anhui University intelligent information processing and Human Computer Interaction Laboratory</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="${cx}/resource/res/sites/images/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="${cx}/resource/res/sites/css/base.css" rel="stylesheet" type="text/css">
    <link href="${cx}/resource/res/sites/css/index.css?v=1" rel="stylesheet" type="text/css">
    <link href="${cx}/resource/res/sites/font/font.css" rel="stylesheet" type="text/css">
    <script src="${cx}/resource/res/sites/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="${cx}/resource/res/sites/js/jquery_compat.js" type="text/javascript"></script>
    <script src="${cx}/resource/res/sites/js/comm.js" type="text/javascript"></script>
    <script src="${cx}/resource/res/sites/js/imagesloaded.pkgd.min.js" type="text/javascript"></script>



    <script type="text/javascript">
    $(window).load( function(){
        initData();
    } );
    //加载初始化数据
    function initData(){
        $.ajax({
            type:'GET',
            dataType: "json",
            url:"${cx}/article/list",
            /*data:{
             email:$("#email").val(),
             password:$("#password").val()
             },*/
            success:function(res){

                //请求成功时执行该函数内容，result即为服务器返回的json对象

                var html="";
                <%--var data = eval(res);--%>
                <%--var json=eval(data.rows);--%>
                <%--if(json.length > 0){--%>
                <%--    for(var i = 0 ; i  < json.length ; i++){--%>

                <%--        var ids=json[i].id;--%>
                <%--        var article_title= json[i].articleTitle;--%>
                <%--        var article_create_date=json[i].articleCreateDate;--%>
                <%--        //--%>
                <%--        html+="<li><a href='${cx}/article/toNewsInfo/"+ids+"'>" +article_title + "</a><b style=\"float: right; font-weight: normal;\"><i class=\"thunews-clock-o\"></i>"+article_create_date+"</b></li>";--%>
                <%--    }--%>
                <%--}--%>
                $("#ul_tnews").html(html);


            },
            error:function(){
//            $("#test").html("发生错误:"+jqXHR.status);
                alert("发生错误");
            }
        });
    }
</script>

</head>
<body>
<%@ include file="header_iiphciEnglish.jsp"%>
<div class="content">
    <ul class="topimgslider">
        <li>
            <a href="" target="_blank" >
                <img src="${cx}/resource/upload_files/image/202000.jpg" alt="">
                <div class="mainWrap relative">
                </div>
            </a>
        </li>
        <li>
            <img src="${cx}/resource/upload_files/image/202001.jpg" alt="">
        </li>

        <li>
            <img src="${cx}/resource/upload_files/image/202002.jpg" alt="">
        </li>

        <li>
            <img src="${cx}/resource/upload_files/image/202003.jpg" alt="">
        </li>

        <li>
            <img src="${cx}/resource/upload_files/image/202004.jpg" alt="">
        </li>
    </ul>
    <script type="text/javascript">
        $(function(){
            $('.topimgslider').slick({
                infinite: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: true,
                centerMode: false,
                dots:true,
                arrows:false
            });
        });
    </script>
    <div class="section section_0">
        <div class="se1top"></div>
        <div class="mainWrap">
            <div class="section_0_l">
                <h2>Brief Introduction<b></b></h2><br>
                <p>　　The laboratory of intelligent information processing and human-computer interaction relies on the national key discipline of computer application technology of Anhui University and the Key Laboratory of computer intelligence and signal processing of Ministry of education</p>
                <a href="" class="more_0">more</a>
            </div>
            <div class="section_0_r">
                <h2>Important Information</h2>
                <ul id="ul_tnews">
                </ul>
                <a href="" class="more_0">more</a>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
<%--    <div class="section section_1">--%>
<%--        <div class="se1top"></div>--%>
<%--        <div class="mainWrap">--%>
<%--            <h2>新闻动态 <a href="News-report" target="_blank">更多</a><b></b></h2>--%>
<%--            <div class="imglist">--%>
<%--                <ul class="lastnewsslider clearfix">--%>
<%--                    <li><a href="/info/News-report/698" target="_blank" title="我和最懂学习的清华心理学教授聊了聊：2020年，还要不要鸡娃？"><img src="${cx}/resource/upload_files/image/1594970653099_0B.jpg" alt="我和最懂学习的清华心理学教授聊了聊：2020年，还要不要鸡娃？">--%>
<%--                        <b><i class="thunews-clock-o"></i>2020.07.15</b>--%>
<%--                        <h3 title="我和最懂学习的清华心理学教授聊了聊：2020年，还要不要鸡娃？">我和最懂学习的清华心理学教授聊了聊：2020年，还要不要鸡娃？</h3><p>你相信孩子的兴趣决定他未来能走多远吗？--%>

<%--                            你相信玩耍会使孩子们变得更聪明吗？--%>

<%--                            你相信毕业于哈佛大学，... </p></a></li>--%>
<%--                    <li><a href="/info/News-report/693" target="_blank" title="What can liner shipping learn from brain network science? "><img src="${cx}/resource/upload_files/image/1592380725309_09.png" alt="What can liner shipping learn from brain network science? ">--%>
<%--                        <b><i class="thunews-clock-o"></i>2020.06.10</b>--%>
<%--                        <h3 title="What can liner shipping learn from brain network science? ">What can liner shipping learn from brain network science? </h3><p>THBI scientist unveils how the organization of global m... </p></a></li>--%>
<%--                    <li><a href="/info/News-report/687" target="_blank" title="Neurotransistors Emulate the Learning ‘Rhythm’ of Neurons"><img src="${cx}/resource/upload_files/image/1590722958186_06.jpg" alt="Neurotransistors Emulate the Learning ‘Rhythm’ of Neurons">--%>
<%--                        <b><i class="thunews-clock-o"></i>2020.05.29</b>--%>
<%--                        <h3 title="Neurotransistors Emulate the Learning ‘Rhythm’ of Neurons">Neurotransistors Emulate the Learning ‘Rhythm’ of Neurons</h3><p>Prof. Carlo Vittorio Cannistraci together with Dr. Eunh... </p></a></li>--%>
<%--                    <li><a href="/info/News-report/660" target="_blank" title="“我和我的祖国……”—清华研究团队揭示音乐回忆的大脑动态过程"><img src="${cx}/resource/upload_files/image/1570862169559_11.jpg" alt="“我和我的祖国……”—清华研究团队揭示音乐回忆的大脑动态过程">--%>
<%--                        <b><i class="thunews-clock-o"></i>2019.10.12</b>--%>
<%--                        <h3 title="“我和我的祖国……”—清华研究团队揭示音乐回忆的大脑动态过程">“我和我的祖国……”—清华研究团队揭示音乐回忆的大脑动态过程</h3><p>刚刚经历了国庆70周年的热烈氛围，你的脑海中是不是还飘荡着“我和我的祖国”的旋律？脑子里满是一首歌的旋律，口中... </p></a></li>--%>
<%--                </ul>--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <script type="text/javascript">--%>
<%--        $(function(){--%>
<%--            $('.lastnewsslider').slick({--%>
<%--                infinite: true,--%>
<%--                slidesToShow: 3,--%>
<%--                slidesToScroll: 3,--%>
<%--                autoplay: true,--%>
<%--                centerMode: false,--%>
<%--                dots:false,--%>
<%--                prevArrow:"<div class=\"sliderbutton prev\"><i class=\"thunews-angle-left\"></i></div>",--%>
<%--                nextArrow:"<div class=\"sliderbutton next\"><i class=\"thunews-angle-right\"></i></div>",--%>
<%--                responsive: [--%>
<%--                    {--%>
<%--                        breakpoint: 700,--%>
<%--                        settings: {--%>
<%--                            slidesToShow: 1,--%>
<%--                            slidesToScroll: 1,--%>
<%--                            adaptiveHeight:true,--%>
<%--                            dots: true--%>
<%--                        }--%>
<%--                    },--%>
<%--                    {--%>
<%--                        breakpoint: 1200,--%>
<%--                        settings: {--%>
<%--                            dots: true--%>
<%--                        }--%>
<%--                    }]--%>

<%--            });--%>
<%--        });--%>
<%--    </script>--%>
    <script type="text/javascript">
        $(function(){
            $('.lecturelist').slick({
                infinite: true,
                slidesToShow: 5,
                slidesToScroll: 5,
                autoplay: true,
                centerMode: false,
                dots:false,
                prevArrow:"<div class=\"sliderbutton prev\"><i class=\"thunews-angle-left\"></i></div>",
                nextArrow:"<div class=\"sliderbutton next\"><i class=\"thunews-angle-right\"></i></div>",
                responsive: [
                    {
                        breakpoint: 800,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2,
                            adaptiveHeight:true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 500,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            adaptiveHeight:true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 1200,
                        settings: {
                            dots: true
                        }
                    }]

            });
            $('#lecturelist').slick({
                infinite: true,
                slidesToShow: 5,
                slidesToScroll: 5,
                autoplay: true,
                centerMode: false,
                dots:false,
                prevArrow:"<div class=\"sliderbutton prev\"><i class=\"thunews-angle-left\"></i></div>",
                nextArrow:"<div class=\"sliderbutton next\"><i class=\"thunews-angle-right\"></i></div>",
                responsive: [
                    {
                        breakpoint: 800,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2,
                            adaptiveHeight:true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 500,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            adaptiveHeight:true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 1200,
                        settings: {
                            dots: true
                        }
                    }]

            });
            $('#lecturelist-1').slick({
                infinite: true,
                slidesToShow: 5,
                slidesToScroll: 5,
                autoplay: true,
                centerMode: false,
                dots:false,
                prevArrow:"<div class=\"sliderbutton prev\"><i class=\"thunews-angle-left\"></i></div>",
                nextArrow:"<div class=\"sliderbutton next\"><i class=\"thunews-angle-right\"></i></div>",
                responsive: [
                    {
                        breakpoint: 800,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2,
                            adaptiveHeight:true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 500,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            adaptiveHeight:true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 1200,
                        settings: {
                            dots: true
                        }
                    }]

            });
        });
    </script>

</div>
<%@ include file="footer_iiphciEnglish.jsp"%>
</body>
</html>
