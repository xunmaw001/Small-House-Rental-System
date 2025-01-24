<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #333;
						font-size: 14px;
						border-color: #ccc;
						line-height: 32px;
						border-radius: 0px;
						outline: none;
						background: #fff;
						width: 320px;
						border-width: 0px;
						border-style: solid;
						height: 32px;
					}
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container" :style='{"width":"100%","padding":"40px 7% 40px","margin":"0px auto","position":"relative","background":"none"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">房源名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.fangyuanmingcheng" type="text" :readonly="ro.fangyuanmingcheng" name="fangyuanmingcheng" id="fangyuanmingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">地址：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.dizhi" type="text" :readonly="ro.dizhi" name="dizhi" id="dizhi" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">房源类型：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.fangyuanleixing" type="text" :readonly="ro.fangyuanleixing" name="fangyuanleixing" id="fangyuanleixing" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">房源城市：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.fangyuanchengshi" type="text" :readonly="ro.fangyuanchengshi" name="fangyuanchengshi" id="fangyuanchengshi" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">封面：</div>
						<img :style='{"minHeight":"80px","width":"150px","margin":"0 10px 0 0","objectFit":"cover","borderRadius":"8px","height":"auto"}' v-if="detail.fengmian" id="fengmianImg" :src="baseurl+detail.fengmian">
						<input v-if="detail.fengmian" type="hidden" :value="detail.fengmian" id="fengmian" name="fengmian" />
						<button v-if="!ro.fengmian" :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#666","color":"#333","outline":"none","borderRadius":"8px","background":"none","borderWidth":"1px","width":"auto","fontSize":"12px","lineHeight":"36px","borderStyle":"dashed","height":"36px"}' type="button" class="layui-btn btn-theme" id="fengmianUpload">
							<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传封面
						</button>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">面积/㎡：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.mianji" type="text" :readonly="ro.mianji" name="mianji" id="mianji" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">月租/元：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.yuezu" type="text" :readonly="ro.yuezu" name="yuezu" id="yuezu" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">租期/月：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.zuqi" type="text" :readonly="ro.zuqi" name="zuqi" id="zuqi" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">押金/元：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.yajin" type="text" :readonly="ro.yajin" name="yajin" id="yajin" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">总金额/元：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="zongjine" type="text" name="zongjine" id="zongjine" disabled="disabled" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">房东账号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.fangdongzhanghao" type="text" :readonly="ro.fangdongzhanghao" name="fangdongzhanghao" id="fangdongzhanghao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">房东姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.fangdongxingming" type="text" :readonly="ro.fangdongxingming" name="fangdongxingming" id="fangdongxingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">租户账号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.zuhuzhanghao" type="text" :readonly="ro.zuhuzhanghao" name="zuhuzhanghao" id="zuhuzhanghao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">租户姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.zuhuxingming" type="text" :readonly="ro.zuhuxingming" name="zuhuxingming" id="zuhuxingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">手机：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.shouji" type="text" :readonly="ro.shouji" name="shouji" id="shouji" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">签订时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' type="text" name="qiandingshijian" id="qiandingshijian" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"padding":"10px","margin":"20px 0 10px 0","borderColor":"#ccc","alignItems":"center","borderWidth":"0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">合同信息：</div>
						<input type="hidden" :value="detail.hetongxinxi" id="hetongxinxi" name="hetongxinxi" />
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#666","color":"#333","outline":"none","borderRadius":"8px","background":"none","borderWidth":"1px","width":"auto","fontSize":"12px","lineHeight":"36px","borderStyle":"dashed","height":"36px"}' type="button" class="layui-btn btn-theme" id="hetongxinxiUpload">
							<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传合同信息
						</button>
						<a :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 0 0 10px","borderColor":"#666","color":"#333","outline":"none","borderRadius":"8px","background":"none","borderWidth":"1px","width":"auto","fontSize":"12px","lineHeight":"36px","borderStyle":"dashed","height":"36px"}' download="合同信息" :href="detail.hetongxinxi">
							<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>下载
						</a>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">起效时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' type="text" name="qixiaoshijian" id="qixiaoshijian" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">截止时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' type="text" name="jiezhishijian" id="jiezhishijian" autocomplete="off" class="layui-input" >
					</div>


					<div :style='{"alignItems":"center","margin":"30px 0 20px 140px","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#59B450","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"10px","background":"linear-gradient(90deg, rgba(32,173,158,1) 0%, rgba(138,228,219,1) 50%, rgba(32,173,158,1) 100%),#20ad9e","borderWidth":"0px 0","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","borderColor":"#999","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"10px","background":"linear-gradient(90deg, rgba(153,153,153,1) 0%, rgba(204,204,204,1) 50%, rgba(153,153,153,1) 100%),#999","borderWidth":"0px 0","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        fangyuanmingcheng : false,
                                        dizhi : false,
                                        fangyuanleixing : false,
                                        fangyuanchengshi : false,
                                        fengmian : false,
                                        mianji : false,
                                        yuezu : false,
                                        zuqi : false,
                                        yajin : false,
                                        zongjine : false,
                                        fangdongzhanghao : false,
                                        fangdongxingming : false,
                                        zuhuzhanghao : false,
                                        zuhuxingming : false,
                                        shouji : false,
                                        qiandingshijian : false,
                                        hetongxinxi : false,
                                        qixiaoshijian : false,
                                        jiezhishijian : false,
                                        ispay : false,
					},
                    detail: {
                        fangyuanmingcheng: '',
                        dizhi: '',
                        fangyuanleixing: '',
                        fangyuanchengshi: '',
                        fengmian: '',
                        mianji: '',
                        yuezu: '',
                        zuqi: '',
                        yajin: '',
                        zongjine: '',
                        fangdongzhanghao: '',
                        fangdongxingming: '',
                        zuhuzhanghao: '',
                        zuhuxingming: '',
                        shouji: '',
                        qiandingshijian: '',
                        hetongxinxi: '',
                        qixiaoshijian: '',
                        jiezhishijian: '',
                        ispay: '',
                    },
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                    zongjine:{
                    get: function () {
                        return 1*this.detail.yuezu*this.detail.zuqi+parseFloat(this.detail.yajin)
                    }
                    },
                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;


                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList = swiperList;

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
				// 上传图片
				var fengmianUpload = upload.render({
					//绑定元素
					elem: '#fengmianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#fengmian').val(url);
							jquery('#fengmianImg').attr('src', http.baseurl +url)
							vue.detail.fengmian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
                                jquery('#qiandingshijian').val(getCurDateTime());
				laydate.render({
					elem: '#qiandingshijian',
					type: 'datetime'
				});
                var hetongxinxiUpload = upload.render({
					//绑定元素
					elem: '#hetongxinxiUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'file',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#hetongxinxi').val(url);
                            vue.detail.hetongxinxi = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				laydate.render({
					elem: '#qixiaoshijian'
				});
				laydate.render({
					elem: '#jiezhishijian'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                        if(key=='fangdongzhanghao'){
                                vue.detail['fangdongzhanghao'] = data[`${key}`]
                                vue.ro.fangdongzhanghao = true;
                                continue;
                        }
                        if(key=='fangdongxingming'){
                                vue.detail['fangdongxingming'] = data[`${key}`]
                                vue.ro.fangdongxingming = true;
                                continue;
                        }
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='fangyuanmingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.fangyuanmingcheng = true;
                                continue;
                        }
                        if(o=='dizhi'){
                                vue.detail[o] = obj[o];
                                vue.ro.dizhi = true;
                                continue;
                        }
                        if(o=='fangyuanleixing'){
                                vue.detail[o] = obj[o];
                                vue.ro.fangyuanleixing = true;
                                continue;
                        }
                        if(o=='fangyuanchengshi'){
                                vue.detail[o] = obj[o];
                                vue.ro.fangyuanchengshi = true;
                                continue;
                        }
                        if(o=='fengmian'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.fengmian = true;
                                continue;
                        }
                        if(o=='mianji'){
                                vue.detail[o] = obj[o];
                                vue.ro.mianji = true;
                                continue;
                        }
                        if(o=='yuezu'){
                                vue.detail[o] = obj[o];
                                vue.ro.yuezu = true;
                                continue;
                        }
                        if(o=='zuqi'){
                                vue.detail[o] = obj[o];
                                vue.ro.zuqi = true;
                                continue;
                        }
                        if(o=='yajin'){
                                vue.detail[o] = obj[o];
                                vue.ro.yajin = true;
                                continue;
                        }
                        if(o=='zongjine'){
                                vue.detail[o] = obj[o];
                                vue.ro.zongjine = true;
                                continue;
                        }
                        if(o=='fangdongzhanghao'){
                                vue.detail[o] = obj[o];
                                vue.ro.fangdongzhanghao = true;
                                continue;
                        }
                        if(o=='fangdongxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.fangdongxingming = true;
                                continue;
                        }
                        if(o=='zuhuzhanghao'){
                                vue.detail[o] = obj[o];
                                vue.ro.zuhuzhanghao = true;
                                continue;
                        }
                        if(o=='zuhuxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.zuhuxingming = true;
                                continue;
                        }
                        if(o=='shouji'){
                                vue.detail[o] = obj[o];
                                vue.ro.shouji = true;
                                continue;
                        }
                        if(o=='qiandingshijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.qiandingshijian = true;
                                jquery('#qiandingshijian').val(obj[o]);
                                continue;
                        }
                        if(o=='hetongxinxi'){
                                vue.detail[o] = obj[o];
                                vue.ro.hetongxinxi = true;
                                continue;
                        }
                        if(o=='qixiaoshijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.qixiaoshijian = true;
                                jquery('#qixiaoshijian').val(obj[o]);
                                continue;
                        }
                        if(o=='jiezhishijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.jiezhishijian = true;
                                jquery('#jiezhishijian').val(obj[o]);
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!isNumber(data.yuezu)){
                        layer.msg('月租/元应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.zuqi)){
                        layer.msg('租期/月应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.yajin)){
                        layer.msg('押金/元应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.zongjine)){
                        layer.msg('总金额/元应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('hetongxinxi/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('hetongxinxi' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('hetongxinxi' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
