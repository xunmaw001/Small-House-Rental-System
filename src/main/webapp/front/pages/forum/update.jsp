<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 论坛中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>交流论坛</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.forum-container {
			margin: 0 auto !important;
			box-sizing: border-box;
		}
		.forum-container .btn-container {
			display: flex;
			    align-items: center;
			    box-sizing: border-box;
			    width: 100%;
			    flex-wrap: wrap;
		}
		.forum-container .btn-container button i {
			margin-right: 4px;
		}
		.forum-container .layui-form-item {
			display: flex;
			align-items: center;
		}
		.forum-container .layui-input-block {
			margin: 0;
			flex: 1;
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

			<!-- 标题 -->
			<div id="breadcrumb">
				<span class="en">FORUM / INFORMATION</span>
				<span class="cn">交流论坛</span>
			</div>
			<!-- 标题 -->

			<div class="forum-container" :style='{"width":"100%","padding":"40px 7% 40px","margin":"0px auto","position":"relative","background":"none"}'>
				<form class="layui-form login-form" lay-filter="myForm">
					<input type="hidden" name="id" />
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item layui-form-text">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="layui-form-label">标题：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"32px","borderStyle":"solid","height":"32px"}' type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item layui-form-text">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="layui-form-label">类型：</div>
						<div class="layui-input-inline" style="text-align: left;">
							<input type="radio" name="isdone" value="开放" title="公开" checked>
							<input type="radio" name="isdone" value="关闭" title="私人">
						</div>
					</div>
					<div :style='{"margin":"0 0 10px 0","alignItems":"center","background":"linear-gradient(90deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","display":"flex"}' class="layui-form-item layui-form-text">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"15px","color":"#992298","textAlign":"right"}' class="layui-form-label">内容：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#ddd","backgroundColor":"#fff","borderRadius":"16px","borderWidth":"1px","width":"88%","borderStyle":"solid","height":"auto"}' name="content" id="content">请输入内容</textarea>
					</div>
					<div :style='{"alignItems":"center","margin":"30px 0 20px 140px","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#59B450","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"10px","background":"linear-gradient(90deg, rgba(32,173,158,1) 0%, rgba(138,228,219,1) 50%, rgba(32,173,158,1) 100%),#20ad9e","borderWidth":"0px 0","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">修改</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","borderColor":"#999","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"10px","background":"linear-gradient(90deg, rgba(153,153,153,1) 0%, rgba(204,204,204,1) 50%, rgba(153,153,153,1) 100%),#999","borderWidth":"0px 0","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
			</div>
		</div>
			<!-- layui -->
			<script src="../../layui/layui.js"></script>
			<!-- vue -->
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
						// 轮播图
						swiperList: [{
							img: '../../img/banner.jpg'
						}]
					},
					methods: {
						jump(url) {
							jump(url)
						}
					}
				})

				layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'tinymce'], function() {
					var layer = layui.layer;
					var element = layui.element;
					var carousel = layui.carousel;
					var http = layui.http;
					var form = layui.form;
					var jquery = layui.jquery;
					var tinymce = layui.tinymce

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
					// 初始化编辑器
					var edit = tinymce.render({
						elem: "#content",
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
								// if (!json || typeof json.location != 'string') {
								// 	failFun('Invalid JSON: ' + xhr.responseText);
								// 	return;
								// }
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
					
					//
					var id = http.getParam("id");
					http.request('forum/list/' + id, 'get', {}, function(res) {
						form.val("myForm", res.data);
						tinymce.get('#content').setContent(res.data.content)
					});
					
					
					form.on('submit(*)', function(data) {
						// 获取富文本的内容
						var content = tinymce.get('#content').getContent()
						data = data.field;
						data.content = content;
						data.username = localStorage.getItem('adminName');
						data.userid = localStorage.getItem('userid');
						data.parentid = 0;
						http.requestJson('forum/update', 'post', data, function(res) {
							layer.msg('发表成功', {
								time: 2000,
								icon: 6
							}, function() {
								back();
							});
						});
						return false;
					});

				});
			</script>
	</body>
</html>
