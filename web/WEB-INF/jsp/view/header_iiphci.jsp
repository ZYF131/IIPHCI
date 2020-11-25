<%--
  Created by IntelliJ IDEA.
  User: zhou
  Date: 2020/9/3
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<header id="header-bar" class="clearfix header" >
        <section class="mainWrap">
            <div class="topwraper relative clearfix">
                <div class="ulink">
                    <ul class="clearfix">
                        <!-- <li class="thuhome mr"><a href="/english" target="_blank">English</a></li>-->
                    </ul>
                </div>
                <a class="logo"><img src="${cx}/resource/res/sites/images/logo.png" alt="logo"></a>
                <div class="search">

                    <form  name="form1" id="search-form-header" action="syss" target="_blank" method="post">
                        <input name="key" type="text" value=""  onFocus="this.value=''" onBlur="if(this.value==''){this.value='';}" value="SEARCH">
                        <a><i class="thunews-search" id="searchbtn" onclick="" value=""></i></a>
                    </form>
                </div>
            </div>
        </section>
        <nav class="navwrap yahei">
            <section class="mainWrap">

                <div id="smenu" class="smenu"><i class="thunews-bars"></i></div>
                <ul id="nav">
                    <li><a href="${cx}/toIndex_iipchi" >首页</a></li>
                    <li><a href="${cx}/toStaff" >实验室团队</a>
                        <ul><i><em></em></i>
                            <li><a href="${cx}/toStaff" >实验室老师</a></li>
                            <li><a href="${cx}/toDoctorStaff" >实验室在读博士</a></li>
                            <li><a href="${cx}/toMasterStaff" >实验室在读硕士</a></li>
                            <!--
                            <li><a href="/Post-doctoral">博士后</a></li>
                            <li><a href="/Information">研究生</a></li>
                            <li><a href="/Academic-Committee">学术委员会</a></li>-->
                        </ul>
                    </li>
                    <li><a href="${cx}/todirector" >科学研究</a>
                        <ul><i><em></em></i>
                            <li><a href="${cx}/todirector" >研究方向</a></li>
                            <li><a href="${cx}/toResult" >科研成果</a></li>
<%--                            <li><a href="${cx}/toNewsTest" >测试</a></li>--%>
                        </ul>
                    </li>
                    <li><a href="" >学术活动</a>
                        <ul><i><em></em></i>
                            <li><a href="" >学术报告</a></li>
                        </ul>
                    </li>
                    <li><a href="${cx}/toeeg" >公开数据集</a>
                        <ul><i><em></em></i>
                            <li><a href="${cx}/toeeg" >运动想象EEG</a></li>
                            <li><a href="${cx}/toface" >面部情感数据</a></li>
                            <li><a href="${cx}/toxiujue" >嗅觉情感数据</a></li>
                        </ul>
                    </li>
                    <li><a href="${cx}/toContact" >联系我们</a></li>
                    <li><a href="${cx}/user/login2" >后台管理系统</a></li>
                    <li class="block"><a href="${cx}/user/toIndex_iiphciEnglish" >English</a></li>
                </ul>


            </section>
        </nav>

</header>
