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
                <a href="" class="logo"><img src="${cx}/resource/res/sites/images/logo.png" alt="logo"></a>
                <div class="search">

                    <form  name="form1" id="search-form-header" action="syss" target="_blank" method="post">
                        <input name="key" type="text" value=""  onFocus="this.value=''" onBlur="if(this.value==''){this.value='';}" value="SEARCH">
                        <a href="javascript:;"><i class="thunews-search" id="searchbtn" onclick="" value=""></i></a>
                    </form>
                </div>
            </div>
        </section>
        <nav class="navwrap yahei">
            <section class="mainWrap">

                <div id="smenu" class="smenu"><i class="thunews-bars"></i></div>
                <ul id="nav">
                    <li><a href="${cx}/user/toIndex_iiphciEnglish" >Home Page</a></li>


                    <li><a href="${cx}/toeegEnglish" >Data Resources</a>
                        <ul><i><em></em></i>
                            <li><a href="${cx}/toeegEnglish" >Motor Imagery EEG Data</a></li>
                            <li><a href="${cx}/user/tofaceEnglish" >Facial Expressions Video Data</a></li>
                        </ul>
                    </li>
                    <li><a href="${cx}/toContactEnglish" >Contact Us</a></li>
                    <li><a href="${cx}/user/login2English" >Login</a></li>
                    <li class="block"><a href="${cx}/toIndex_iipchi" >中文</a></li>
                </ul>


            </section>
        </nav>

</header>
