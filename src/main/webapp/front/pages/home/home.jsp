<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: skew(0deg, 0deg);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						border-radius: 4px;
						padding: 30px 20px;
						left: 10px;
						background: linear-gradient(240deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 100%);
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: #fc8800;
					}
		
		.news .list-6 .swiper-button-next {
						border-radius: 4px;
						padding: 30px 20px;
						left: auto;
						background: linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 100%);
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: #fc8800;
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: translate3d(0px,0px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						padding: 40px 20px;
						left: 40px;
						background: #fff;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #20ad9e;
					}
		
		.lists .list-3 .swiper-button-next {
						padding: 40px 20px;
						left: auto;
						background: #fff;
						right: 40px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #20ad9e;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						border-radius: 100%;
						left: 10px;
						background: none;
						width: 40px;
						right: auto;
						height: 40px;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: #249940;
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: #249940;
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						transform: translate3d(0px, 10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"width":"100%","margin":"0px auto","flexWrap":"wrap","justifyContent":"center","display":"flex"}'>
			
				

				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"0 0 0px","margin":"20px auto 0","borderColor":"#98dd90","alignItems":"flex-start","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230130/d81fd2d44f4e475eb1c571b1f64e5fae.png) no-repeat center top","borderWidth":"0 0 0px","display":"flex","width":"100%","position":"relative","borderStyle":"dotted","order":"2"}'>
					<div v-if="true && 3 == 1" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230130/aacb0fbd36e642799c61ce8641b160ed.jpg) no-repeat center top / 100% auto","display":"flex","width":"100%","justifyContent":"space-between","height":"600px"}'>
						<div :style='{"width":"100%","background":"url() no-repeat left center","display":"none","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px","margin":"50px 7% 80px","borderRadius":"0px","alignItems":"flex-start","background":"url() no-repeat center bottom","flexDirection":"row","display":"flex","width":"50%","position":"relative","justifyContent":"center","height":"76px"}'>
						<span :style='{"fontSize":"24px","lineHeight":"50px","color":"#555","display":"inline-block","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"padding":"0 0 0px","margin":"0 10px 0 0","color":"#202020","textAlign":"center","background":"none","display":"inline-block","width":"auto","fontSize":"32px","fontWeight":"600"}'>房源信息推荐</span>
					</div>
					
					<div v-if="true && 3 == 2" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230130/aacb0fbd36e642799c61ce8641b160ed.jpg) no-repeat center top / 100% auto","display":"flex","width":"100%","justifyContent":"space-between","height":"600px"}'>
						<div :style='{"width":"100%","background":"url() no-repeat left center","display":"none","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<div :style='{"padding":"20px 7% 40px","flexWrap":"wrap","background":"none","display":"block","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-4">
					    <div :style='{"cursor":"pointer","margin":"0 0px","transform":"skew(0deg, 0deg)","width":"48%","position":"relative","float":"right","height":"570px"}' v-if="fangyuanxinxiRecommend.length>0" class="list-4-item animation-box item-1" @click="jump('../fangyuanxinxi/detail.jsp?id='+fangyuanxinxiRecommend[0].id)">
							<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="fangyuanxinxiRecommend[0].fengmian?baseurl+fangyuanxinxiRecommend[0].fengmian.split(',')[0]:''" alt="" />
							<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"32px","fontSize":"14px","position":"absolute","textOverflow":"ellipsis"}'>
                                <div>{{fangyuanxinxiRecommend[0].fangyuanmingcheng}}</div>
                                <div>{{fangyuanxinxiRecommend[0].fangyuanchengshi}}</div>
                                <div>{{fangyuanxinxiRecommend[0].fangdongxingming}}</div>
                            </div>
					    </div>
					    <div class="list-body" :style='{"width":"48%","margin":"0 0 10px","float":"left","justifyContent":"space-between","display":"flex","height":"275px"}' v-if="fangyuanxinxiRecommend.length>1">
							<div v-if="fangyuanxinxiRecommend.length>1" @click="jump('../fangyuanxinxi/detail.jsp?id='+fangyuanxinxiRecommend[1].id)" class="list-4-item animation-box item-2" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="fangyuanxinxiRecommend[1].fengmian?baseurl+fangyuanxinxiRecommend[1].fengmian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"32px","fontSize":"14px","position":"absolute","textOverflow":"ellipsis"}'>
                                    <div>{{fangyuanxinxiRecommend[1].fangyuanmingcheng}}</div>
                                    <div>{{fangyuanxinxiRecommend[1].fangyuanchengshi}}</div>
                                    <div>{{fangyuanxinxiRecommend[1].fangdongxingming}}</div>
                                </div>
							</div>
							<div v-if="fangyuanxinxiRecommend.length>2" @click="jump('../fangyuanxinxi/detail.jsp?id='+fangyuanxinxiRecommend[2].id)" class="list-4-item animation-box item-3" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="fangyuanxinxiRecommend[2].fengmian?baseurl+fangyuanxinxiRecommend[2].fengmian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"32px","fontSize":"14px","position":"absolute","textOverflow":"ellipsis"}'>
                                    <div>{{fangyuanxinxiRecommend[2].fangyuanmingcheng}}</div>
                                    <div>{{fangyuanxinxiRecommend[2].fangyuanchengshi}}</div>
                                    <div>{{fangyuanxinxiRecommend[2].fangdongxingming}}</div>
                                </div>
							</div>
					    </div>
					    <div v-if="fangyuanxinxiRecommend.length>3" class="list-body" :style='{"width":"48%","margin":"10px 0 0","float":"left","justifyContent":"space-between","display":"flex","height":"275px"}'>
							<div v-if="fangyuanxinxiRecommend.length>3" @click="jump('../fangyuanxinxi/detail.jsp?id='+fangyuanxinxiRecommend[3].id)" class="list-4-item animation-box item-4" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="fangyuanxinxiRecommend[3].fengmian?baseurl+fangyuanxinxiRecommend[3].fengmian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"32px","fontSize":"14px","position":"absolute","textOverflow":"ellipsis"}'>
                                    <div>{{fangyuanxinxiRecommend[3].fangyuanmingcheng}}</div>
                                    <div>{{fangyuanxinxiRecommend[3].fangyuanchengshi}}</div>
                                    <div>{{fangyuanxinxiRecommend[3].fangdongxingming}}</div>
                                </div>
							</div>
							<div v-if="fangyuanxinxiRecommend.length>4" @click="jump('../fangyuanxinxi/detail.jsp?id='+fangyuanxinxiRecommend[4].id)" class="list-4-item animation-box item-5" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="fangyuanxinxiRecommend[4].fengmian?baseurl+fangyuanxinxiRecommend[4].fengmian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"32px","fontSize":"14px","position":"absolute","textOverflow":"ellipsis"}'>
                                    <div>{{fangyuanxinxiRecommend[4].fangyuanmingcheng}}</div>
                                    <div>{{fangyuanxinxiRecommend[4].fangyuanchengshi}}</div>
                                    <div>{{fangyuanxinxiRecommend[4].fangdongxingming}}</div>
                                </div>
							</div>
					    </div>
					</div>
					
					<div :style='{"cursor":"pointer","padding":"0 12px 0 20px","margin":"0px auto","borderColor":"#fff","textAlign":"center","display":"inline-block","minWidth":"200px","borderRadius":"30px","background":"url(http://codegen.caihongy.cn/20230130/900bb2bf212e4ef8a599ed8502aa2b9d.png) no-repeat 90% center,linear-gradient(90deg, rgba(151,36,152,1) 0%, rgba(32,173,158,1) 100%),#20ad9e","borderWidth":"0px","width":"auto","lineHeight":"44px","borderStyle":"dashed","height":"44px"}' @click="jump('../fangyuanxinxi/list.jsp')">
						<span :style='{"color":"#fff","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#fff","fontSize":"14px","display":"none"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="true && 3 == 3" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230130/aacb0fbd36e642799c61ce8641b160ed.jpg) no-repeat center top / 100% auto","display":"flex","width":"100%","justifyContent":"space-between","height":"600px"}'>
						<div :style='{"width":"100%","background":"url() no-repeat left center","display":"none","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->

            
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"padding":"0px","margin":"0px  7%","borderColor":"#98dd90","flexWrap":"wrap","background":"none","borderWidth":"0 0 0px","display":"flex","width":"56%","position":"relative","borderStyle":"dotted","order":"8"}'>
					<div v-if="false && 2 == 1" class="news-idea" :style='{"width":"100%","padding":"0px 7%","flexWrap":"wrap","background":"#fff","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/533c6403944f4524a04473dbecdf6668.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0 0px","margin":"30px auto 20px","borderRadius":"0px","alignItems":"center","background":"none","flexDirection":"row","display":"flex","width":"100%","position":"relative","justifyContent":"flex-start","height":"50px"}'>
						<span :style='{"fontSize":"24px","color":"#555","display":"inline-block","order":"2","textTransform":"uppercase"}'>HOME NEWS</span>
						<span :style='{"margin":"0 10px 0 0","color":"#202020","textAlign":"center","background":"none","display":"inline-block","width":"auto","fontSize":"32px","lineHeight":"60px","fontWeight":"bold","height":"60px"}'>系统公告</span>
					</div>
					
					<div v-if="false && 2 == 2" class="news-idea" :style='{"width":"100%","padding":"0px 7%","flexWrap":"wrap","background":"#fff","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/533c6403944f4524a04473dbecdf6668.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"none","display":"flex","height":"auto"}' v-if="newsList.length" class="list list-8">
						<div v-if="newsList.length > 0" :style='{"padding":"10px","margin":"0 0px 20px","flexWrap":"wrap","background":"linear-gradient(45deg, rgba(32,173,158,1) 0%, rgba(93,197,186,1) 15%, rgba(206,242,239,1) 50%, rgba(194,238,234,1) 75%, rgba(32,173,158,1) 100%),#20ad9e","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' @click="jump('../news/detail.jsp?id='+newsList[0].id)" class="new7-list-item animation-box">
							<div :style='{"width":"calc(100% - 210px)","padding":"10px","background":"#fff","height":"auto","order":"2"}' class="new8-list-body">
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#333","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new8-list-item-title">{{ newsList[0].title }}</div>
								<div :style='{"fontSize":"14px","lineHeight":"24px","overflow":"hidden","color":"#666","textIndent":"2em","height":"72px"}' class="new8-list-item-descript">{{ newsList[0].introduction }}</div>
								<div :style='{"fontSize":"12px","lineHeight":"24px","color":"#999","textAlign":"right"}' class="new8-list-item-time">{{ newsList[0].addtime }}</div>
							</div>
							<img :style='{"objectFit":"cover","width":"200px","height":"170px"}' :src="baseurl+newsList[0].picture">
						</div>
						<div v-if="newsList.length > 1" :style='{"padding":"10px","margin":"0 0px 40px","flexWrap":"wrap","background":"linear-gradient(45deg, rgba(153,34,152,1) 0%, rgba(93,197,186,1) 15%, rgba(233,188,233,1) 50%, rgba(194,238,234,1) 75%, rgba(32,173,158,1) 100%),#20ad9e","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' @click="jump('../news/detail.jsp?id='+newsList[1].id)" class="new7-list-item animation-box">
							<img :style='{"objectFit":"cover","width":"200px","height":"170px"}' :src="baseurl+newsList[1].picture">
							<div :style='{"width":"calc(100% - 210px)","padding":"10px","background":"#fff","height":"auto"}' class="new8-list-body">
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#333","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new8-list-item-title">{{ newsList[1].title }}</div>
								<div :style='{"fontSize":"14px","lineHeight":"24px","overflow":"hidden","color":"#666","textIndent":"2em","height":"72px"}' class="new8-list-item-descript">{{ newsList[1].introduction }}</div>
								<div :style='{"fontSize":"12px","lineHeight":"24px","color":"#999","textAlign":"right"}' class="new8-list-item-time">{{ newsList[1].addtime }}</div>
							</div>
						</div>
						<div v-if="newsList.length > 2" :style='{"padding":"10px","margin":"0 10px","flexWrap":"wrap","background":"#f5f5f5","display":"none","width":"100%","justifyContent":"space-between","height":"auto"}' @click="jump('../news/detail.jsp?id='+newsList[2].id)" class="new7-list-item animation-box">
							<div :style='{"width":"calc(100% - 200px)","padding":"10px","background":"#fff","height":"auto"}' class="new8-list-body">
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#333","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new8-list-item-title">{{ newsList[2].title }}</div>
								<div :style='{"fontSize":"14px","lineHeight":"24px","overflow":"hidden","color":"#666","textIndent":"2em","height":"72px"}' class="new8-list-item-descript">{{ newsList[2].introduction }}</div>
								<div :style='{"fontSize":"12px","lineHeight":"24px","color":"#999","textAlign":"right"}' class="new8-list-item-time">{{ newsList[2].addtime }}</div>
							</div>
							<img :style='{"objectFit":"cover","width":"170px","height":"170px"}' :src="baseurl+newsList[2].picture">
						</div>
						<div v-if="newsList.length > 3" :style='{"padding":"10px","margin":"0 10px","flexWrap":"wrap","background":"#f5f5f5","display":"none","width":"100%","justifyContent":"space-between","height":"auto"}' @click="jump('../news/detail.jsp?id='+newsList[3].id)" class="new7-list-item animation-box">
							<img :style='{"objectFit":"cover","width":"170px","height":"170px"}' :src="baseurl+newsList[3].picture">
							<div :style='{"width":"calc(100% - 200px)","padding":"10px","background":"#fff","height":"auto"}' class="new8-list-body">
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#333","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new8-list-item-title">{{ newsList[3].title }}</div>
								<div :style='{"fontSize":"14px","lineHeight":"24px","overflow":"hidden","color":"#666","textIndent":"2em","height":"72px"}' class="new8-list-item-descript">{{ newsList[3].introduction }}</div>
								<div :style='{"fontSize":"12px","lineHeight":"24px","color":"#999","textAlign":"right"}' class="new8-list-item-time">{{ newsList[3].addtime }}</div>
							</div>
						</div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 12px 0 20px","margin":"0","borderColor":"#fad76f","textAlign":"center","display":"inline-block","right":"0","top":"40px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","position":"absolute","borderStyle":"dashed","height":"40px"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#666","fontSize":"16px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#666","fontSize":"16px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 2 == 3" class="recommend-idea" :style='{"width":"100%","padding":"0px 7%","flexWrap":"wrap","background":"#fff","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230110/533c6403944f4524a04473dbecdf6668.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
				<!-- 关于我们 -->
				<div :style='{"padding":"80px 7% 120px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"0 0 60px","borderColor":"#98dd90","display":"block","justifyContent":"space-between","minHeight":"600px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230130/cea0f80d9df244b8b07db0052d4191a2.png) no-repeat center bottom,url(http://codegen.caihongy.cn/20230130/d2e10e7dcbff48d3895e011f73f46f77.png) no-repeat right bottom / auto 100%,#f7fbfc","borderWidth":"0 0 0px","width":"100%","position":"relative","borderStyle":"dotted","height":"auto","order":"1"}'>
					<div :style='{"padding":"0 0 0px","margin":"0 0 0px","color":"#000","textAlign":"left","background":"url(http://codegen.caihongy.cn/20230130/8b9d126cfee848c48e05750bd3e8461d.png) no-repeat right center / 60% auto","display":"inline-block","width":"48%","fontSize":"32px","fontWeight":"600","zIndex":"99","order":"1","height":"90px"}'>{{aboutUsDetail.title}}</div>
					<div :style='{"padding":"0 0 0 0px","margin":"0px 0 0px","color":"#555","textAlign":"left","display":"inline-block","clear":"both","top":"124px","left":"7%","background":"none","width":"48%","fontSize":"24px","lineHeight":"40px","position":"absolute","zIndex":"9","order":"2","height":"auto"}'>{{aboutUsDetail.subtitle}}</div>
					<div :style='{"padding":"0px","margin":"160px 0 0","flexWrap":"wrap","background":"none","display":"flex","width":"48%","float":"right","height":"220px","order":"4"}'>
						<img :style='{"padding":"0px","margin":"0px","borderColor":"#249940","objectFit":"cover","borderRadius":"8px","borderWidth":"0px","background":"#fff","display":"block","width":"48%","borderStyle":"outset","height":"100%"}' :src="baseurl+aboutUsDetail.picture1">
						<img :style='{"width":"48%","margin":"0 10px","objectFit":"cover","borderRadius":"8px","display":"block","height":"100%"}' :src="baseurl+aboutUsDetail.picture2">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture3">
					</div>
					<div :style='{"padding":"20px 20px","boxShadow":"0px 10px 12px -10px #999","margin":"10px 0 10px 0px","borderColor":"#b4e8af","color":"#666","textIndent":"2em","float":"left","overflow":"hidden","borderRadius":"8px","background":"#fff","borderWidth":"0px","width":"48%","lineHeight":"24px","fontSize":"14px","borderStyle":"inset","height":"360px","order":"3"}' v-html="aboutUsDetail.content"></div>
					<div :style='{"top":"30px","left":"7%","background":"url() no-repeat center center","display":"none","width":"214px","position":"absolute","height":"232px","zIndex":"9"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
			

				<div class="lists" :style='{"padding":"40px 7% 100px","margin":"0px auto 0","borderColor":"#98c6e2","flexWrap":"wrap","textAlign":"center","background":"#f4f4f4","borderWidth":"0 0 0px","display":"block","width":"100%","position":"relative","borderStyle":"dotted","order":"4"}'>
					<div v-if="false && 3 == 1" class="recommend-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#faf0e6","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230130/e43782b42d4547e9a7147c04acb1957d.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 7% 20px","margin":"20px auto 40px","borderRadius":"0px","alignItems":"flex-start","background":"url(http://codegen.caihongy.cn/20230130/2d385bca38bb476596d3946973a96593.png) no-repeat center bottom","flexDirection":"row","display":"flex","width":"auto","position":"relative","justifyContent":"center"}'>
					  <span :style='{"fontSize":"24px","lineHeight":"50px","color":"#555","display":"inline-block","order":"2","textTransform":"uppercase"}'>DATA SHOW</span>
					  <span :style='{"padding":"0","margin":"0 10px 0 0","color":"#202020","background":"none","display":"inline-block","fontSize":"32px","fontWeight":"bold","height":"56px"}'>房源信息展示</span>
					</div>
					
					<div v-if="false && 3 == 2" class="recommend-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#faf0e6","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230130/e43782b42d4547e9a7147c04acb1957d.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<!-- 样式三 -->
				    <div class="list list-3">
						<div :style='{"width":"100%","padding":"100px 40px","borderRadius":"16px","background":"linear-gradient(90deg, rgba(151,36,152,1) 0%, rgba(32,173,158,1) 100%)","height":"auto"}' class="swiper-container" id="listsfangyuanxinxi">
							<div class="swiper-wrapper">
								<div class="swiper-slide animation-box" :style='{"cursor":"pointer","border":"0px solid #eee","padding":"0px","borderRadius":"4px","background":"none","fontSize":"0","position":"relative"}' v-for="(item,index) in fangyuanxinxiList" :key="index" @click="jump('../fangyuanxinxi/detail.jsp?id='+item.id)">
									<img :name="item.id" :style='{"border":"0px dotted #fff","width":"calc(100% - 20px)","padding":"20px","margin":"0 0 10px","background":"url(http://codegen.caihongy.cn/20230130/d254b3d5ad3f44648d9c986526c6f303.png) no-repeat center top / 100% 100%","height":"250px"}' :src="item.fengmian?baseurl+item.fengmian.split(',')[0]:''" alt="" />
									<div :style='{"padding":"0 10px","borderColor":"#b5e8af","margin":"0 auto 10px","color":"#333","borderRadius":"20px","background":"linear-gradient(0deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","borderWidth":"0 0 0px","width":"90%","fontSize":"14px","lineHeight":"40px","borderStyle":"solid"}' class="name">{{item.fangyuanmingcheng}}</div>
									<div :style='{"padding":"0 10px","borderColor":"#b5e8af","margin":"0 auto 10px","color":"#333","borderRadius":"20px","background":"linear-gradient(0deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","borderWidth":"0 0 0px","width":"90%","fontSize":"14px","lineHeight":"40px","borderStyle":"solid"}' class="name">{{item.fangyuanchengshi}}</div>
									<div :style='{"padding":"0 10px","borderColor":"#b5e8af","margin":"0 auto 10px","color":"#333","borderRadius":"20px","background":"linear-gradient(0deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","borderWidth":"0 0 0px","width":"90%","fontSize":"14px","lineHeight":"40px","borderStyle":"solid"}' class="name">{{item.fangdongxingming}}</div>
								</div>
							</div>
														<!-- 如果需要导航按钮 -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
													</div>
				    </div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"0 0 0 -100px","borderColor":"#999","textAlign":"center","bottom":"80px","display":"inline-block","minWidth":"200px","borderRadius":"30px","background":"url(http://codegen.caihongy.cn/20230130/900bb2bf212e4ef8a599ed8502aa2b9d.png) no-repeat 90% center,#20ad9e","borderWidth":"0px","width":"auto","lineHeight":"44px","position":"absolute","borderStyle":"solid","zIndex":"99"}' @click="jump('../fangyuanxinxi/list.jsp')">
						<span :style='{"color":"#fff","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#555","fontSize":"14px","display":"none"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 3 == 3" class="recommend-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#faf0e6","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230130/e43782b42d4547e9a7147c04acb1957d.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 图文列表 -->


			
				<!-- 系统简介 -->
				<div :style='{"padding":"0px 7% 0 0","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"44px 0 20px 7%","borderColor":"#20ad9e","display":"block","flexWrap":"wrap","background":"none","borderWidth":"0 4px 0px 0","width":"23%","position":"relative","borderStyle":"solid","height":"auto","order":"7"}'>
					<div :style='{"margin":"0px","color":"#333","textAlign":"left","background":"none","display":"inline-block","width":"100%","fontSize":"32px","fontWeight":"600","height":"48px"}'>{{systemIntroductionDetail.title}}</div>
					<div :style='{"margin":"0px 0 0px","color":"#333","textAlign":"left","display":"inline-block","width":"100%","lineHeight":"24px","fontSize":"24px","textTransform":"uppercase"}'>{{systemIntroductionDetail.subtitle}}</div>
					<div :style='{"padding":"0 0px","flexWrap":"wrap","display":"none","width":"100%","justifyContent":"space-between","height":"auto","order":"4"}'>
						<img :style='{"padding":"0px","margin":"20px 0px 0","borderColor":"#b4e8af","objectFit":"cover","borderRadius":"8px","borderWidth":"0px","background":"none","display":"block","width":"32%","borderStyle":"outset","height":"220px"}' :src="baseurl + systemIntroductionDetail.picture1">
						<img :style='{"padding":"0px","margin":"0px 0px 0","borderColor":"#bdefb6","objectFit":"cover","borderRadius":"8px","borderWidth":"0px","background":"none","display":"block","width":"32%","borderStyle":"solid","height":"220px"}' :src="baseurl + systemIntroductionDetail.picture2">
						<img :style='{"border":"0px solid #bdefb6","padding":"0px","margin":"10px 0px 0","objectFit":"cover","borderRadius":"8px","display":"block","width":"32%","height":"220px"}' :src="baseurl + systemIntroductionDetail.picture3">
					</div>
					<div :style='{"padding":"20px 20px 20px 24px","margin":"30px auto 0px","borderColor":"#fad76f","color":"#333","textIndent":"2em","overflow":"hidden","borderRadius":"8px","background":"url(http://codegen.caihongy.cn/20230131/9543629579404f72953c320de179d045.png) no-repeat center top / 100% 100%","borderWidth":"0px","width":"100%","lineHeight":"24px","fontSize":"14px","position":"relative","borderStyle":"groove","height":"352px","zIndex":"99"}' v-html="systemIntroductionDetail.content"></div>
					<div :style='{"top":"460px","left":"7%","background":"url(http://codegen.caihongy.cn/20230115/c090c7481b1341f1908621ad8677d6ed.png)  no-repeat left top / 240px 240px","display":"none","width":"240px","position":"absolute","height":"240px","zIndex":"1"}'></div>
					<div :style='{"top":"460px","background":"url(http://codegen.caihongy.cn/20230115/ea1e131b397d4fd1908ae293d5f46e0a.png)  no-repeat left top / 240px 240px","display":"none","width":"240px","position":"absolute","right":"7%","height":"240px","zIndex":"1"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {


                    // 推荐数据
					fangyuanxinxiRecommend: [],



                    fangyuanxinxiList: [],


                    aboutUsDetail:{},
                    systemIntroductionDetail: {},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '600px',
								anim: 'default',
								autoplay: 'true',
								interval: '5000',
								arrow: 'always',
								indicator: 'inside'
							});
						})
					}
				});

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });
                http.request(`systemintro/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.systemIntroductionDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 2,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 8;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"3","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "fangyuanxinxi/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "fangyuanxinxi/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					sfsh: '是',
					limit: 6,
				}, function(res) {
					vue.fangyuanxinxiRecommend = res.data.list
					
					let flag = 4;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendfangyuanxinxi', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperfangyuanxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				

                http.request(`fangyuanxinxi/list`, 'get', {
					sfsh: '是',
					page: 1,
					limit: 8,
				}, function(res) {
					vue.fangyuanxinxiList = res.data.list
					
					let flag = 3;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":40,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsfangyuanxinxi', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperfangyuanxinxi', {
								loop: true,
								speed: 600,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":"6000","disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
