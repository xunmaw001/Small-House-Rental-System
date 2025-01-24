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
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">房源城市</div>
						<select name="fangyuanchengshi" id="fangyuanchengshi" lay-filter="fangyuanchengshi"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in fangyuanchengshi" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">是否装修</div>
						<select name="shifouzhuangxiu" id="shifouzhuangxiu" lay-filter="shifouzhuangxiu"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in shifouzhuangxiu" v-bind:key="index" :value="item">{{item}}</option>
						</select>
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
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">押金/元：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.yajin" type="text" :readonly="ro.yajin" name="yajin" id="yajin" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">朝向：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.chaoxiang" type="text" :readonly="ro.chaoxiang" name="chaoxiang" id="chaoxiang" autocomplete="off" class="layui-input">
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
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">房源类型</div>
						<select name="fangyuanleixing" id="fangyuanleixing" lay-filter="fangyuanleixing"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in fangyuanleixing" v-bind:key="index" :value="item">{{item}}</option>
						</select>
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
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">联系电话：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' v-model="detail.lianxidianhua" type="text" :readonly="ro.lianxidianhua" name="lianxidianhua" id="lianxidianhua" autocomplete="off" class="layui-input">
					</div>

					<div :style='{"margin":"0 0 10px 0","alignItems":"center","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="label">配套详情：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#ddd","backgroundColor":"#fff","borderRadius":"16px","borderWidth":"1px","width":"88%","borderStyle":"solid","height":"auto"}' name="peitaoxiangqing" id="peitaoxiangqing">请输入配套详情</textarea>
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
                                        fangyuanchengshi : false,
                                        shifouzhuangxiu : false,
                                        mianji : false,
                                        yuezu : false,
                                        yajin : false,
                                        chaoxiang : false,
                                        fengmian : false,
                                        fangyuanleixing : false,
                                        fangdongzhanghao : false,
                                        fangdongxingming : false,
                                        lianxidianhua : false,
                                        peitaoxiangqing : false,
                                        sfsh : false,
                                        shhf : false,
                                        clicktime : false,
                                        clicknum : false,
					},
                    detail: {
                        fangyuanmingcheng: '',
                        dizhi: '',
                        fangyuanchengshi: '',
                        shifouzhuangxiu: '',
                        mianji: '',
                        yuezu: '',
                        yajin: '',
                        chaoxiang: '',
                        fengmian: '',
                        fangyuanleixing: '',
                        fangdongzhanghao: '',
                        fangdongxingming: '',
                        lianxidianhua: '',
                        peitaoxiangqing: '',
                        sfsh: '',
                        shhf: '',
                        clicktime: '',
                        clicknum: '',
                    },
					fangyuanchengshi: [],
					shifouzhuangxiu: '是,否'.split(','),
					fangyuanleixing: [],
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



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
				http.request(`option/fangyuanchengshi/fangyuanchengshi`,'get',{},(res)=>{
					vue.fangyuanchengshi = res.data
				});
                form.on('select(shifouzhuangxiu)', function (data) {
                    vue.detail.shifouzhuangxiu=data.value;
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
				http.request(`option/fangyuanleixing/fangyuanleixing`,'get',{},(res)=>{
					vue.fangyuanleixing = res.data
				});
                var edit = tinymce.render({
                    elem: "#peitaoxiangqing",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
				laydate.render({
					elem: '#clicktime',
					type: 'datetime'
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
                        if(key=='lianxidianhua'){
                                vue.detail['lianxidianhua'] = data[`${key}`]
                                vue.ro.lianxidianhua = true;
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
                        if(o=='fangyuanchengshi'){
                                vue.detail[o] = obj[o];
                                vue.ro.fangyuanchengshi = true;
                                continue;
                        }
                        if(o=='shifouzhuangxiu'){
                                vue.detail[o] = obj[o];
                                vue.ro.shifouzhuangxiu = true;
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
                        if(o=='yajin'){
                                vue.detail[o] = obj[o];
                                vue.ro.yajin = true;
                                continue;
                        }
                        if(o=='chaoxiang'){
                                vue.detail[o] = obj[o];
                                vue.ro.chaoxiang = true;
                                continue;
                        }
                        if(o=='fengmian'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.fengmian = true;
                                continue;
                        }
                        if(o=='fangyuanleixing'){
                                vue.detail[o] = obj[o];
                                vue.ro.fangyuanleixing = true;
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
                        if(o=='lianxidianhua'){
                                vue.detail[o] = obj[o];
                                vue.ro.lianxidianhua = true;
                                continue;
                        }
                        if(o=='peitaoxiangqing'){
                                vue.detail[o] = obj[o];
                                vue.ro.peitaoxiangqing = true;
                                continue;
                        }
                        if(o=='clicktime'){
                                vue.detail[o] = obj[o];
                                vue.ro.clicktime = true;
                                jquery('#clicktime').val(obj[o]);
                                continue;
                        }
                        if(o=='clicknum'){
                                vue.detail[o] = obj[o];
                                vue.ro.clicknum = true;
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
                    if(!isNumber(data.yajin)){
                        layer.msg('押金/元应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
					var peitaoxiangqing = tinymce.get('#peitaoxiangqing').getContent()
					data.peitaoxiangqing = peitaoxiangqing;
                    if(!isIntNumer(data.clicknum)){
                        layer.msg('点击次数应输入整数', {
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
                                http.request('fangyuanxinxi/list', 'get', {
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
                                            http.requestJson('fangyuanxinxi' + '/add', 'post', data, function(res) {
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
                                http.requestJson('fangyuanxinxi' + '/add', 'post', data, function(res) {
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
