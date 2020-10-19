// JavaScript Document

$(function()
{
	//ie6
	
	if ( $.browser.msie){
		 if(parseInt( $.browser.version )<7){
			 $("body").prepend("<div class='ie6' style='display:none;'><span>关闭</span>非常抱歉，本站不再支持您的浏览器，请升级您的浏览器到 <a href='http://www.microsoft.com/zh-cn/download/internet-explorer-8-details.aspx' target='_blank' style='text-decoration:underline'>更高的版本</a>！以获得更好的观看效果。</div>");
			 $(".ie6").animate({height:"toggle",opacity:"toggle"},1000);
			 $(".ie6 span").click(function(){$(".ie6").slideUp()})
	}}
	
	////小屏幕
	
	$("#smenu").toggle(function()
	{
		$(this).addClass("active");
		$("#nav").addClass("active");
		$("header .search").addClass("active");
	},function()
	{
		$(this).removeClass("active");
		$("#nav").removeClass("active");
		$("header .search").removeClass("active");
	})		
	
	
	////小子导航菜单
	$("#subsmenu").toggle(function()
	{
		$(".enav li").show();
		$(".monthnav li").show();
	},function()
	{
		$(".enav li:not('.current')").hide();
		$(".monthnav li:not('.month')").hide();
	})	
	
	
	$(".ulink .socialnet").click(function(){
		
		$(this).find(".socialwraper").toggle();
		})
	
	///滚动图片翻页按钮
	
	$(".subchannel .slidegallery").hover(function(){
		$(".subchannel .slidegallery .owl-buttons").fadeIn("fast");
		},function(){
		$(".subchannel .slidegallery .owl-buttons").fadeOut("fast");	
		});

		//随屏幕
	
	$(window).on("scroll",function(){

		if($(window).scrollTop()>101)
		{
			if(!$(".header").is(".scroll")) $(".header").addClass("scroll");
		}else
		{
			$(".header").removeClass("scroll");
		}
	})
		//随屏幕
	
	$("#toup").on("click",function(){$("html,body").animate({scrollTop: 0}, 500);})
	$("#share").on("click",function(){
		$(".righttools .sharewrapper").slideToggle()
	})

	$(window).on("scroll",function(){

		if($(window).scrollTop()>90)
		{
			if(!$("#header").is(".fixed")) $("#header").addClass("fixed");
			if(!$("#toup").is("hide")) $("#toup").fadeIn();
		}else
		{
			$("#header").removeClass("fixed");
			$("#toup").fadeOut();
		}
		
		$(".scrollfix").each(function(idx)
		{
			if($(window).scrollTop()<=$($(this).attr("overposition")).offset().top)
			{
				$(this).css({"top":"0"}).removeClass("start");
			}else if ($(window).scrollTop()+$(this).find(".contact").height()+$("#header").height()+15<$($(this).attr("endposition")).offset().top){
				$(this).css({"top":$(window).scrollTop()-$($(this).attr("overposition")).offset().top+$("#header").height()+15}).addClass("start");
			}

		})
		
		
	})


})

function showshare()
{
	bShare.more();
	if($(window).width()<650){
		$("#bsBox").css({"width":"80%","margin-left":"-40%"});
		$("#bsBox .bsTop,#bsBox #bsMorePanel").css({"width":"100%"});
		$("#bsBox #searchBox").css({"width":"75%"});
	}
}
