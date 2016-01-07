<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 设置项目路径 -->
<c:set var="ctx" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="zh-CN"> 
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="海拼,海淘,海外购物">
	<meta name="description" content="">
	
	<title>海拼|专业的海外购物网站</title>
	<!-- Bootstrap -->
	<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${ctx}/css/font-awesome.min.css" rel="stylesheet">
	<link href="${ctx}/css/non-responsive.css" rel="stylesheet">
	<link href="${ctx}/css/welcome.css" rel="stylesheet"> 
</head>

<body>
	<!-- 导航栏 -->
    <nav class="navbar site-navigation" id = "header" >
      <div class="container">
        <div class="navbar-header">
          <!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
          <a href="#">
          	<img class="navbar-brand" id="head-logo" alt="" src="${ctx}/images/hai.png">
          </a>
        </div>
        <!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
        <div id="navbar">
          <ul id = "head-menu" class="nav navbar-nav">
          		<li class="active"><a href="#" >首页</a></li>
            	<li class="dropdown">
              		<a href="#" style="margin-left: 15px" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">加入拼单<span class="caret"></span></a>
              		<div id="dropdown-menu-ping" class="dropdown-menu" style="margin-left: 15px;">
                		<ul class="primary-tag">
                                    <li><a href="javascript:void(0)">日本</a></li>
                                    <li><a href="javascript:void(0)">美国</a></li>
                                    <li><a href="javascript:void(0)">德国</a></li>
                                    <li><a href="javascript:void(0)">韩国</a></li>
                                    <br />
                                    <li><a href="javascript:void(0)">数码</a></li>
                                    <li><a href="javascript:void(0)">化妆</a></li>
                                    <li><a href="javascript:void(0)">服装</a></li>
                                    <li><a href="javascript:void(0)">配饰</a></li>
                                    <li><a href="javascript:void(0)">美食</a></li>
                            </ul>
              		</div>
            	</li>
            	<li><a href="#contact" style="margin-left: 15px">发起拼单</a></li>
            	<li><a href="#" style="margin-left: 15px">社区</a></li>
            	<li><a href="#" style="margin-left: 15px">指南</a></li>
          </ul>
           
          <ul class="nav navbar-nav navbar-right" id = "user-panel">
          		<c:choose>
          			<c:when test="${user == null or !user.legal}">
          				<!-- 登录前 -->
          				<li>
          					<div id="user-login-register">
          						<a id = "login" rel="leanModal" href="#signup">
  									登录
								</a>
								<span>|&nbsp;</span>
								<a id = "register" rel="leanModal" href="#signup">
  									注册
								</a>
							</div>
          				</li>
          			</c:when>
          			<c:otherwise>
          				<!-- 登录后 -->
          				<li>
          					<a href="#" id = "message-logo">
  								<i class="fa fa-envelope-o fa-fw"></i>&nbsp;<span class="badge">4</span>
							</a>
          				</li>
        				<li class = "dropdown">
        					<a href="#" id = "user-panel-a"  class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        						<img id = "user-logo" width="34" height="34" src="${ctx}/images/my-user.jpg" alt=" bright lee">
        						<span id= "user-logo-name">bright-李</span>
        					</a>
        					<ul id = "my-panel-dropdown" class="dropdown-menu">
        						<li>
        							<i id="icon-wrap"></i>
                    				<i id="icon-inner"></i>
                    			</li>
                				<li ><a href="#"><i class="fa fa-user fa-fw"></i>&nbsp;&nbsp;&nbsp;个人中心</a></li>
                				<li ><a href="#"><i class="fa fa-shopping-cart fa-fw"></i>&nbsp;&nbsp;&nbsp;我的拼单&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge">3</span></a></li>
                				<li><a href="#"><i class="fa fa-heart fa-fw"></i>&nbsp;&nbsp;&nbsp;我的收藏&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge">11</span></a></li>
                				<li ><a href="#"><i class="fa fa-cog fa-fw"></i>&nbsp;&nbsp;&nbsp;个人设置</a></li>
                		
                				<li class="divider"></li>
                				<li><a href="#"><i class="fa fa-sign-out fa-fw"></i>&nbsp;&nbsp;&nbsp;退出</a></li>
             	 			</ul>
             			</li>
          			</c:otherwise>
          		</c:choose>
             </ul>
        </div>
      </div>
    </nav>
    
    
    <!-- 消息栏 -->
    <div id="message-body" class="container">
    	<!-- 左右结构 -->
    	<div class="row" id="message-top-body">
    		<div id = "message-left-body" class="col-xs-9">
    			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      		<ol class="carousel-indicators">
        		<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        		<li data-target="#carousel-example-generic" data-slide-to="1"></li>
        		<li data-target="#carousel-example-generic" data-slide-to="2"></li>
      		</ol>
      	<div class="carousel-inner" role="listbox">
        	<div class="item active">
          		<img class = "carousel-img" src="${ctx}/images/sunset.jpg" alt="First slide">
          		<div class="carousel-caption">
    				<h3>促销活动</h3>
    				<p>这里有你想要的海外物品</p>
  				</div>
        	</div>
        	<div class="item">
          		<img class = "carousel-img" src="${ctx}/images/wood.jpg" alt="Second slide">
        	</div>
       	 	<div class="item">
          		<img class = "carousel-img" src="${ctx}/images/subway.jpg" alt="Third slide">
        	</div>
      	</div>
      	<!-- Controls -->
  		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="margin-top: -30px;">
    			<i class="fa fa-angle-left fa-2x" style="color: white;margin-top: -30px;"></i>
    		</span>
    		<span class="sr-only">Previous</span>
  		</a>
  		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="margin-top: -30px;">
    		<i class="fa fa-angle-right fa-2x" style="color: white;margin-top: -30px;"></i></span>
    		<span class="sr-only">Next</span>
  		</a>
    </div>
    
    	<!--  
    	<form id = "search-form"  name="form" action="#" role="search">
            	<div class="form-group">
            		<div class="input-group">
  						<input class="form-control" type="text" placeholder="搜下有什么好拼单">
  						<span class="input-group-addon" onclick="javascript:form.submit();" style="cursor:pointer;"><i class="fa fa-search"></i></span>
					</div>
				</div>
          	</form> -->
          	
          	<!-- 热门单品 -->
    		<div id="hot-goods" >
    			<div id="hot-goods-head" class="container">
    				 <a href="#" class="head-tabel-font" id="head-a"><i style="color:rgb(66, 139, 202);" class="fa fa-circle-o fa-fw"></i>&nbsp;热销单品
    				 </a>
    				 <div id="hot-goods-head-classify">
						<a href="#" class="head-tabel-font-small">护肤</a>
							<span class="line">|</span>
						<a href="#" class="head-tabel-font-small">奶粉</a>
							<span class="line">|</span>
						<a href="#" class="head-tabel-font-small">数码</a>
							<span class="line">|</span>
						<a href="#" class="head-tabel-font-small">服饰</a>
							<span class="line">|</span>
						<a href="#" class="head-tabel-font-small">皮包</a>
							<span class="line">|</span>
						<a href="#" class="head-tabel-font-small">食品</a>
    				 </div>
    				 <a href="#" class="head-tabel-font-small" id="head-more">
    				 	更多&nbsp;<i  class="fa fa-angle-right fa-fw"></i>
    				 </a>
    			</div>
    			<div id="hot-goods-body" class="container">
    				<ul class="cardlist-goods">
    					<li>
      						<div class="cardlist-goods-div">
   	 							<a href="#" class="">
      								<img src="${ctx}/images/goods1.jpg"  title="详细信息" alt="详细信息" class="center-block">
    							</a>
    							
    							<a class="extra-collect" href="javascript:void(0)" value="1"  title="收藏">
 					 				<i class="fa fa-heart fa-fw"></i>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-title">
 					 			<a href="#">
 					 				<b>Miss Candy健康指彩可剥甲油</b>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-price-box">
 					 			<span class="cur-price">海拼价: ￥55.00</span>
 					 			<!-- <span class="org-price" title="拼单数">已拼: 124</span> -->
 					 		</div>	
    					</li>
    					
    					<li>
    						<div class="cardlist-goods-div">
   	 							<a href="#" class="">
      								<img src="${ctx}/images/goods2.jpg" alt="" class="center-block">
    							</a>
    							
    							<a class="extra-collect" href="javascript:void(0)" value="1">
 					 				<i class="fa fa-heart fa-fw"></i>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-title">
 					 			<a href="#">
 					 				<b>【田乙造】小飞机场 | 手工头...</b>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-price-box">
 					 			<span class="cur-price">￥388.00</span>
 					 		</div>		
    					</li>
    					
    					<li>
    						<div class="cardlist-goods-div">
   	 							<a href="#" class="">
      								<img src="${ctx}/images/goods6.jpg" alt="" class="center-block">
    							</a>
    							<a class="extra-collect" href="javascript:void(0)" value="1">
 					 				<i class="fa fa-heart fa-fw"></i>
 					 			</a>
 					 		</div>	
 					 		
 					 		<div class="cardlist-goods-title">
 					 			<a href="#">
 					 				<b>MAKE UP FOR EVER玫珂菲...</b>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-price-box">
 					 			<span class="cur-price">￥300.00</span>
 					 		</div>	
    					</li>
    					
    					<li>
    						<div class="cardlist-goods-div">
   	 							<a href="#" class="">
      								<img src="${ctx}/images/goods5.jpg" alt="" class="center-block">
    							</a>
    							<a class="extra-collect" href="javascript:void(0)" value="1">
 					 				<i class="fa fa-heart fa-fw"></i>
 					 			</a>
 					 		</div>	
 					 		
 					 		<div class="cardlist-goods-title">
 					 			<a href="#">
 					 				<b>ROYAL和风碧根果仁核桃...</b>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-price-box">
 					 			<span class="cur-price">￥109.00</span>
 					 		</div>	
    					</li>

						<li>
    						<div class="cardlist-goods-div">
   	 							<a href="#" class="">
      								<img src="${ctx}/images/goods4.jpg" alt="" class="center-block">
    							</a>
    							<a class="extra-collect" href="javascript:void(0)" value="1">
 					 				<i class="fa fa-heart fa-fw"></i>
 					 			</a>
 					 		</div>	
 					 		
 					 		<div class="cardlist-goods-title">
 					 			<a href="#">
 					 				<b>EcoCity Vintage Leather...</b>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-price-box">
 					 			<span class="cur-price">￥400.00</span>
 					 		</div>	
    					</li>
    					
    					<li>
    						<div class="cardlist-goods-div">
   	 							<a href="#" class="">
      								<img src="${ctx}/images/goods8.jpg" alt="" class="center-block">
    							</a>
    							<a class="extra-collect" href="javascript:void(0)" value="1">
 					 				<i class="fa fa-heart fa-fw"></i>
 					 			</a>
 					 		</div>	
 					 		
 					 		<div class="cardlist-goods-title">
 					 			<a href="#">
 					 				<b>Aroma ess.洗发水沐浴露...</b>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-price-box">
 					 			<span class="cur-price">￥396.00</span>
 					 		</div>	
    					</li>
    					<li>
    						<div class="cardlist-goods-div">
   	 							<a href="#" class="">
      								<img src="${ctx}/images/goods11.jpg" alt="" class="center-block">
    							</a>
    							<a class="extra-collect" href="javascript:void(0)" value="1">
 					 				<i class="fa fa-heart fa-fw"></i>
 					 			</a>
 					 		</div>	
 					 		
 					 		<div class="cardlist-goods-title">
 					 			<a href="#">
 					 				<b>Aroma ess.洗发水沐浴露...</b>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-price-box">
 					 			<span class="cur-price">￥396.00</span>
 					 		</div>	
    					</li>
    					<li>
    						<div class="cardlist-goods-div">
   	 							<a href="#" class="">
      								<img src="${ctx}/images/goods3.jpg" alt="" class="center-block">
    							</a>
    							<a class="extra-collect" href="javascript:void(0)" value="1">
 					 				<i class="fa fa-heart fa-fw"></i>
 					 			</a>
 					 		</div>	
 					 		
 					 		<div class="cardlist-goods-title">
 					 			<a href="#">
 					 				<b>Aroma ess.洗发水沐浴露...</b>
 					 			</a>
 					 		</div>
 					 		
 					 		<div class="cardlist-goods-price-box">
 					 			<span class="cur-price">￥396.00</span>
 					 		</div>	
    					</li>
    				</ul>
    			</div>
    		</div>
    		
    		<!--  -->
    		<div id="hot-pd" >
    			<div id="hot-pd-head" class="container">
    				 <a href="#" class="head-tabel-font" id="head-a"><i style="color:rgb(66, 139, 202);" class="fa fa-circle-o fa-fw"></i>&nbsp;最新拼单
    				 </a>
    				 <!-- <div id="hot-pd-head-classify">
						<a href="#" class="head-tabel-font-small">美国</a>
							<span class="line">|</span>
						<a href="#" class="head-tabel-font-small">日本</a>
							<span class="line">|</span>
						<a href="#" class="head-tabel-font-small">韩国</a>
							<span class="line">|</span>
						<a href="#" class="head-tabel-font-small">亚马逊</a>
							<span class="line">|</span>
						<a href="#" class="head-tabel-font-small">乐天</a>
    				 </div> -->
    				 <a href="#" class="head-tabel-font-small" id="head-more">
    				 	更多&nbsp;<i class="fa fa-angle-right fa-fw"></i>
    				 </a>
    			</div>
    			
    			<div id="hot-pd-body" class="container">
    				<ul class="cardlist-pd">
    					<li>
      						<div class="cardlist-pd-each">
      							<div class="cardlist-pd-each-inner">
      								<a class="pd-inner-cover" href="javascript:void(0)">
      									<img alt="" src="${ctx}/images/pd-user1.jpg">
      								</a>
      								
      								<h3>
      									<a class="pd-inner-h3-a" href="javascript:viod(0)">日本亚马逊，松本清，Lush，muji，cosme拼单</a>
      								</h3>
      								
      								<p class="pd-inner-desc">
      									<a class="pd-inner-desc-a" href="javascript:viod(0)">
      										PhebeSwift13
      									</a>
      									<span>&nbsp;&nbsp;&nbsp;发起&nbsp;&nbsp;|&nbsp;&nbsp;</span>
      									<span>231</span>
      									<span>加入</span>
      								</p>
      								
      								<p class="pd-inner-intro">
      									结束时间：2015-8-10 24:00
      								</p>
      							</div>
      						</div>
    					</li>
    					
    					<li>
      						<div class="cardlist-pd-each">
      							<div class="cardlist-pd-each-inner">
      								<a class="pd-inner-cover" href="javascript:void(0)">
      									<img alt="" src="${ctx}/images/pd-user2.jpg">
      								</a>
      								
      								<h3>
      									<a class="pd-inner-h3-a" href="javascript:viod(0)">美国代购拼单，无所不拼，美卡美私</a>
      								</h3>
      								
      								<p class="pd-inner-desc">
      									<a class="pd-inner-desc-a" href="javascript:viod(0)">
      										babyfriend
      									</a>
      									<span>&nbsp;&nbsp;&nbsp;发起&nbsp;&nbsp;|&nbsp;&nbsp;</span>
      									<span>122</span>
      									<span>加入</span>
      								</p>
      								
      								<p class="pd-inner-intro">
      									结束时间：2015-8-19 24:00
      								</p>
      							</div>
      						</div>
    					</li>
    					
    					<li>
      						<div class="cardlist-pd-each">
      							<div class="cardlist-pd-each-inner">
      								<a class="pd-inner-cover" href="javascript:void(0)">
      									<img alt="" src="${ctx}/images/pd-user3.jpg">
      								</a>
      								
      								<h3>
      									<a class="pd-inner-h3-a" href="javascript:viod(0)">德国brita滤水壶、滤芯、滤水杯一起拼单</a>
      								</h3>
      								
      								<p class="pd-inner-desc">
      									<a class="pd-inner-desc-a" href="javascript:viod(0)">
      										armm
      									</a>
      									<span>&nbsp;&nbsp;&nbsp;发起&nbsp;&nbsp;|&nbsp;&nbsp;</span>
      									<span>13</span>
      									<span>加入</span>
      								</p>
      								
      								<p class="pd-inner-intro">
      									结束时间：2015-8-19 24:00
      								</p>
      							</div>
      						</div>
    					</li>
    					
    					<li>
      						<div class="cardlist-pd-each">
      							<div class="cardlist-pd-each-inner">
      								<a class="pd-inner-cover" href="javascript:void(0)">
      									<img alt="" src="${ctx}/images/pd-user4.jpg">
      								</a>
      								
      								<h3>
      									<a class="pd-inner-h3-a" href="javascript:viod(0)">walgreens 拼单 维骨力系列</a>
      								</h3>
      								
      								<p class="pd-inner-desc">
      									<a class="pd-inner-desc-a" href="javascript:viod(0)">
      										Andy
      									</a>
      									<span>&nbsp;&nbsp;&nbsp;发起&nbsp;&nbsp;|&nbsp;&nbsp;</span>
      									<span>23</span>
      									<span>加入</span>
      								</p>
      								
      								<p class="pd-inner-intro">
      									结束时间：2015-8-19 24:00
      								</p>
      							</div>
      						</div>
    					</li>
    					
    					<li>
      						<div class="cardlist-pd-each">
      							<div class="cardlist-pd-each-inner">
      								<a class="pd-inner-cover" href="javascript:void(0)">
      									<img alt="" src="${ctx}/images/pd-user5.jpg">
      								</a>
      								
      								<h3>
      									<a class="pd-inner-h3-a" href="javascript:viod(0)">乐天 润膏6支装 有EMS五折活动，运费只要60元</a>
      								</h3>
      								
      								<p class="pd-inner-desc">
      									<a class="pd-inner-desc-a" href="javascript:viod(0)">
      										GERMAINE
      									</a>
      									<span>&nbsp;&nbsp;&nbsp;发起&nbsp;&nbsp;|&nbsp;&nbsp;</span>
      									<span>100</span>
      									<span>加入</span>
      								</p>
      								
      								<p class="pd-inner-intro">
      									结束时间：2015-8-19 24:00
      								</p>
      							</div>
      						</div>
    					</li>
    					
    					<li>
      						<div class="cardlist-pd-each">
      							<div class="cardlist-pd-each-inner">
      								<a class="pd-inner-cover" href="javascript:void(0)">
      									<img alt="" src="${ctx}/images/pd-user6.jpg">
      								</a>
      								
      								<h3>
      									<a class="pd-inner-h3-a" href="javascript:viod(0)">韩国代购拼单，无代购费。个人买得多</a>
      								</h3>
      								
      								<p class="pd-inner-desc">
      									<a class="pd-inner-desc-a" href="javascript:viod(0)">
      										今晚打老虎
      									</a>
      									<span>&nbsp;&nbsp;&nbsp;发起&nbsp;&nbsp;|&nbsp;&nbsp;</span>
      									<span>23</span>
      									<span>加入</span>
      								</p>
      								
      								<p class="pd-inner-intro">
      									结束时间：2015-8-19 24:00
      								</p>
      							</div>
      						</div>
    					</li>
    				</ul>
    				
    		
    			</div>
    		</div>
    	
    		</div>
    		
    		
    		<div id="message-right-body" class="col-xs-3">
				<!-- 搜索栏 -->
    			<form class="search-bar" action="#">
    			<div class="form-group">
  					<div class="input-group">
  						<input type="text" class="form-control" placeholder="搜拼单、搜单品" aria-describedby="basic-addon2">
  						<span class="input-group-btn" id="basic-addon2"><button type="submit" class="btn btn-default maincolor1 maincolor1hover"><i class="fa fa-search"></i></button></span>
					</div>
				</div>
				</form>
				
				<!-- 热门网站 -->
				<div id="hot-website"> 
					<div id="hot-website-header">
						<span>热门帖子</span>
						<div class="more-tag-right">
							<a href="javascript:void(0)">更多</a>
						</div>
					</div>
					
					<div id="website-rank">
						<ul>
							<li class="rank-thumbnail">
									<div class="rank-index top3 top1">
										<i class="fa fa-star-o"></i>
										<span>1</span>
									</div>
									<a class="wrapper" href="javascript:void(0)">【经验】海淘四个半月，晒一路走来的艰辛与奇闻</a>
							</li>
							
							<li class="rank-thumbnail">
									<div class="rank-index top3">
										<i class="fa fa-star-o"></i>
										<span>2</span>
									</div>
									<a class="wrapper" href="javascript:void(0)">【Amazon海淘】美国亚马逊海淘购物攻略</a>
							</li>
							
							<li class="rank-thumbnail">
									<div class="rank-index top3">
										<i class="fa fa-star-o"></i>
										<span>3</span>
									</div>
									<a class="wrapper" href="javascript:void(0)">【经验】日亚的注册和下单（多图）</a>
							</li>
							
							<li class="rank-thumbnail">
									<div class="rank-index">
										<i></i>
										<span></span>
									</div>
									<a class="wrapper" href="javascript:void(0)">【商品征集】大家都来分享海淘好商品吧！）</a>
							</li>
						</ul>
					</div>
				</div>
				
				<!-- 本周top拼单网  -->
				<div id="pd-rank"> 
					<div id="pd-rank-header">
						<span>每周Top拼主榜</span>
						<div class="more-tag-right">
							<a href="javascript:void(0)">更多</a>
						</div>
					</div>
				
					<ul class="pd-rank-inner">
						<li>
							<div class="pd-rank-inner-img">
								<img alt="" src="${ctx}/images/pd-rank1.jpg" class="center-block">
							</div>
							
							<h3>远晨</h3>
							<span class="pd-rank-inner-detail">3 拼单 / 99% 好评 </span>
							
							<span class="pd-rank-index">1</span>
						</li>
						
						<li>
							<div class="pd-rank-inner-img">
								<img alt="" src="${ctx}/images/pd-rank2.jpg" class="center-block">
							</div>
							
							<h3>远晨</h3>
							<span class="pd-rank-inner-detail">3 拼单 / 97% 好评 </span>
							
							<span class="pd-rank-index">2</span>
						</li>
						
						<li>
							<div class="pd-rank-inner-img">
								<img alt="" src="${ctx}/images/pd-rank3.jpg" class="center-block">
							</div>
							
							<h3>止</h3>
							<span class="pd-rank-inner-detail">2 拼单 / 90% 好评 </span>
							
							<span class="pd-rank-index">3</span>
						</li>
						
						<li>
							<div class="pd-rank-inner-img">
								<img alt="" src="${ctx}/images/pd-rank4.jpg" class="center-block">
							</div>
							
							<h3>Hook</h3>
							<span class="pd-rank-inner-detail">2 拼单 / 90% 好评 </span>
							
							<span class="pd-rank-index">4</span>
						</li>
						
						<li>
							<div class="pd-rank-inner-img">
								<img alt="" src="${ctx}/images/pd-rank5.jpg" class="center-block">
							</div>
							
							<h3>北方,女王</h3>
							<span class="pd-rank-inner-detail">1 拼单 / 92% 好评 </span>
							
							<span class="pd-rank-index">5</span>
						</li>
						
						<li>
							<div class="pd-rank-inner-img">
								<img alt="" src="${ctx}/images/pd-rank6.jpg" class="center-block">
							</div>
							
							<h3>鹧鸪鸟</h3>
							<span class="pd-rank-inner-detail">1 拼单 / 91% 好评 </span>
							
							<span class="pd-rank-index">6</span>
						</li>
						
						<li>
							<div class="pd-rank-inner-img">
								<img alt="" src="${ctx}/images/pd-rank7.jpg" class="center-block">
							</div>
							
							<h3>夏利</h3>
							<span class="pd-rank-inner-detail">1拼单 / 90% 好评 </span>
							
							<span class="pd-rank-index">7</span>
						</li>
						
						<li>
							<div class="pd-rank-inner-img">
								<img alt="" src="${ctx}/images/pd-rank8.jpg" class="center-block">
							</div>
							
							<h3>It·s beginning</h3>
							<span class="pd-rank-inner-detail">1 拼单 / 88% 好评 </span>
							
							<span class="pd-rank-index">8</span>
						</li>
					</ul>
    		</div>
    	</div>
    </div>
    
    <div id="footer">
		<span id="icp" class="fleft gray-link">
    		© 2005－2015 haiping.com, all rights reserved
		</span>
		
		<span class="fright">
    		<a href="#">关于海拼</a>
    · 
     		<a href="#">联系我们</a>
    · 
     		<a href="#">免责声明</a>
    · 
     		<a href="#">帮助中心</a>
    · 
     		<a href="#" target="_blank">开发者</a>
    · 
     		<a href="#">海拼广告</a>
		</span>
	</div>
    
    <!-- 返回顶部 -->
    <div class="fixed-aside">
    	<a class="btn-feedback" href="#" target="_blank">
        	<i class="ilmenicon-comment"></i>
        	反馈
    	</a>
    	<a class="btn-follow" href="#" target="_blank">
       		 关注我们
    	</a>
    	<a class="btn-top" href="#">
        	<i class="fa fa-angle-double-up fa-2x"></i>
        	回顶部
    	</a>
	</div>
    </div>
	
	<!-- 登录框 -->
	<div id="signup" style="display: none; position: fixed; opacity: 1; z-index: 11000; left: 50%; margin-left: -202px; top: 50px;">
			
			<div class="modal-bd">
				<a class="modal_close" href="#" title="关闭">×</a>
					<div class="login-block">
					<form action="${ctx}/user/login" method="post" id="login-form" class="pop-form">
					<h2>登录偶买噶</h2>
					<fieldset class="data-fieldset">
            			<div class="item spec">
                			<label for="login_user">帐号</label>
                			<input tabindex="1" type="text" id="form_email" name="form_email" class="text" placeholder="邮箱">
                			<span class="err_tip"></span>
            			</div>
            			<div class="item spec">
                			<label for="login_pwd">密码</label>
                			<input tabindex="2" type="password" name="form_password" id="form_password" class="text" placeholder="密码">
                			<span class="err_tip"></span>
            			</div>


            			<div class="item recsubmit">
                			<div class="remember">
                    			<input type="checkbox" id="remember" name="remember" tabindex="5">
                    			<label for="remember">下次自动登录</label>
                    			<a href="#/accounts/resetpassword" target="_blank">忘记密码</a>
               	 			</div>
            			</div>
            			
            			<input type="submit" class="btn-submit btn-login" value="登 录" tabindex="6">
        			</fieldset>
				</form>
				
				<form action="${ctx}/user/register" method="post" id="register-form" class="pop-form">
					<h2>注册偶买噶</h2>
					<fieldset class="data-fieldset">
            			<div class="item spec">
                			<label for="register_user">邮箱</label>
                			<input tabindex="1" type="text" id="form_email_register" name="form_email" class="text" placeholder="">
                			<span class="err_tip"></span>
            			</div>
            			<div class="item spec">
                			<label for="register_pwd">密码</label>
                			<input tabindex="2" type="password" name="form_password" id="form_password_register" class="text" placeholder="6-14位数字字母、特殊字符">
                			<span class="err_tip"></span>
            			</div>
            			<div class="item spec">
                			<label for="register_pwd">昵称</label>
                			<input tabindex="2" type="password" name="form_password" id="form_password_register" class="text" placeholder="起一个响亮的名号吧！">
                			<span class="err_tip"></span>
            			</div>
            			<div class="item spec">
                			<label for="register_pwd">验证码</label>
                			<input tabindex="2" type="password" name="form_password" id="form_password_register" class="text" placeholder="">
                			<span class="err_tip"></span>
            			</div>


            			<div class="item recsubmit">
                			<div class="remember-register">
                    			<input type="checkbox" id="agree_regsiter" tabindex="5">
                    			<label for="agree_regsiter">阅读并同意</label>
                    			<a href="#/accounts/resetpassword" target="_blank">《海拼协议》</a>
               	 			</div>
            			</div>
            			<input type="submit" class="btn-submit btn-register" value="注册" tabindex="6">
            			
            			<!-- <input type="button" class="btn-register" value="注册" tabindex=6">  -->
        			</fieldset>
				</form>
				
				<div id="other_login_info">
					<div class="third-party-mod">
            		<p>用其他帐号登录</p>
            			<ul class="social-login">
                			<li>
                    			<a target="_top" class="weibo" href="#"><i class="fa fa-weibo"></i>&nbsp;&nbsp;&nbsp;新浪微博</a>
                			</li>
                			<li>
                				<a target="_top" class="qq" href="#"><i class="fa fa-qq"></i>&nbsp;&nbsp;&nbsp;腾讯QQ</a>
                			</li>
                			
                			<li id="change-login-register">
                			
                			</li>
            			</ul>
        			</div>
        			
        			<div id="other-info">
        			<p>还没有海拼账户？</p>
                    <a target="_top" class="other-info-button" href="#">立即注册</a>
                    </div>
				</div>
				
				</div>
			</div>
	</div>
	<div id="lean_overlay" style="display: none; opacity: 0.3;"></div>
	
	
	
    
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${ctx}/script/ie10-viewport-bug-workaround.js"></script>
	<!-- 模式对话框插件 -->
	<script src="${ctx}/script/jquery.leanModal.min.js"></script>
	
	<script type="text/javascript">
		$(function() {
			/* $(window).scroll(function(){  
                if ($(window).scrollTop()>100){  
                    $(".fixed-aside").fadeIn(200);  
                }  
                else  
                {  
                    $(".fixed-aside").fadeOut(200);  
                }  
        	});  */
			
			$('a[rel*=leanModal]').leanModal({ top : 150, overlay : 0.3, closeButton: ".modal_close" });		
		
        	$('#login').click(function(){
        		if ($("#login-form").css('display') == "none") {
        			$("#register-form").css({"display":"none"});
        			$("#login-form").css({"display":"block"});
        			
        			$('#other-info p').text("还没有海拼账户？");
        			$('#other-info a').text("立即注册");
        		}
        	});
        	
        	$('#register').click(function(){
        		if ($("#register-form").css('display') == "none") {
        			$("#login-form").css("display","none");
        			$("#register-form").css("display","block");
        			
        			$('#other-info p').text("已经有海拼账户？");
        			$('#other-info a').text("立即登录");
        		}
        	});
        	
        	
        	$('#other-info a').click(function(){
        		
        		if ($("#login-form").css('display') != "none") {
        			$("#login-form").css("display","none");
        			$("#register-form").css("display","block");
        			
        			$('#other-info p').text("已经有海拼账户？");
        			$('#other-info a').text("立即登录");
        		}
        		else {
        			$("#register-form").css({"display":"none"});
        			$("#login-form").css({"display":"block"});
        			
        			$('#other-info p').text("还没有海拼账户？");
        			$('#other-info a').text("立即注册");
        		}
        	});
        	
			//收藏动画效果
	        $("a.extra-collect").click(function(){
	        	var flg = $(this).attr('value');
	        	if (flg == 1) { //当前没有收藏
	        		$(this).find('i').css('color', '#db5140');
	        		$(this).find('i').animate({
	        			marginTop:'-7px',
	        			fontSize:'40px',
	        			marginLeft:'-3px',
	        			opacity:'0.0'}, 300, function(){
	        				$(this).css('color', '#db5140');
	        				$(this).css('opacity', '1');
	        				$(this).css('font-size', '16px');
	        				$(this).css('margin', '0');
	        				$(this).parent().attr('value', 0);
	        			});
	        	}
	        	else { //已经收藏了
	        		$(this).find('i').css('color', '#484848');
	        		$(this).attr('value', 1);
	        	}
	        }); 
	        
	        
	        //解决div子元素 闪烁问题
	        $("div.cardlist-goods-div > a > img").mouseout(function(){  
	        	if(!$(this).parent().parent().find('a.extra-collect').is(event.toElement)){
	        		$(this).css('opacity', '1');
	        		$(this).parent().parent().find('a.extra-collect').hide();
	        	}
	        });
	          	
	        $("div.cardlist-goods-div > a > img").mouseover(function(){  
	        	if(!$(this).parent().parent().find('a.extra-collect').is(event.fromElement)){
	        		$(this).css('opacity', '0.6');
             	   	$(this).parent().parent().find('a.extra-collect').show();  
	        	}   
	        });  
		
		});
		
    	$(document).ready(function () {
        	$('#head-menu > li > .dropdown-toggle').mouseover(function() {
            	$('#head-menu > li > .dropdown-menu').fadeIn(200).slideDown(200);
       	 	});

        	$('#head-menu > li > .dropdown-toggle').mouseout(function() {
            	t = setTimeout(function() {
                	$('#head-menu > li > .dropdown-menu').fadeOut(90);
            	}, 90);

            	$('#head-menu > li > .dropdown-menu').on('mouseenter', function() {
                	$('#head-menu > li > .dropdown-menu').show();
                	$('#head-menu > li > .dropdown-toggle').parent().addClass('active');
                	clearTimeout(t);
            	}).on('mouseleave', function() {
               	 	$('#head-menu > li > .dropdown-menu').hide();
               	 $('#head-menu > li > .dropdown-toggle').parent().removeClass('active');
            	})
        	});
        	
        	if(window.chrome) {
				$('.banner li').css('background-size', '100% 100%');
			}

			$('.banner').unslider({
				fluid: true,
				dots: true,
				speed: 500,               //  The speed to animate each slide (in milliseconds)
				delay: 3000, 
			});
			
			 
	  
	        //当点击跳转链接后，回到页面顶部位置  
	  
	        $(".btn-top").click(function(){  
	             $('body,html').animate({scrollTop:0},100);  
	             return false;  
	        });  
	            
	        
	        
    	});
    </script>
</body>
</html>