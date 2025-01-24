<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 登陆 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>登录</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
			</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		
		#loginForm .l-redio .layui-form-radio {
						cursor: pointer;
						margin: 0;
						display: inline-block;
						vertical-align: middle;
						line-height: 44px;
					}
		
		#loginForm .l-redio .layui-form-radio .layui-icon {
						color: #666;
						display: inline-block;
						font-size: 18px;
						margin-right: 8px;
					}

		#loginForm .l-redio .layui-form-radio div {
						color: #666;
						display: inline-block;
						vertical-align: middle;
						font-size: 14px;
					}

		#loginForm .l-redio .layui-form-radio.layui-form-radioed .layui-icon {
						color: #992298;
						display: inline-block;
						font-size: 18px;
					}

		#loginForm .l-redio .layui-form-radio.layui-form-radioed div {
						color: #992298;
						display: inline-block;
						vertical-align: middle;
						font-size: 14px;
					}
	</style>
	<body>
				<div id="login" class="login" :style='{"minHeight":"100vh","width":"100%","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230131/c788dee9481d4fd896e419a46388d74e.png) no-repeat center bottom,url(http://codegen.caihongy.cn/20230131/fb996fdf6c5c4781a7b257b4b91254dd.png) no-repeat center top,url(http://codegen.caihongy.cn/20230131/bd3718741ba74578b2f69615121a81d9.jpg) no-repeat center bottom / 100% auto","justifyContent":"center","display":"flex"}'>
			<form id="loginForm" class="layui-form login-form" :style='{"border":"0px solid #666","padding":"40px 0 0 0px","boxShadow":"inset 0px 0px 0px 0px #666","margin":"0 auto","borderRadius":"0","flexWrap":"wrap","background":"none","display":"flex","width":"800px","position":"relative","justifyContent":"center","height":"auto"}'>
				<div v-if="true" :style='{"margin":"0 0 4px","color":"#555","textAlign":"center","display":"none","width":"62%","lineHeight":"44px","fontSize":"24px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / LOGIN</div>
				<div v-if="true" :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0px 0 30px","borderColor":"#bdefb6","color":"#333","textAlign":"center","background":"none","borderWidth":"0px","width":"100%","lineHeight":"24px","fontSize":"20px","borderStyle":"solid","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>基于B/S模式的小型房屋租赁系统的设计与实现</div>
				<div :style='{"width":"80%","margin":"0 0 20px","flexWrap":"wrap","display":"flex"}' class="form-item">
				    <div class="layui-form-label" v-if="false" :style='{"width":"64px","padding":"0 10px 0 0","lineHeight":"44px","fontSize":"14px","color":"#333"}'>账号</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","borderColor":"#ddd","color":"#333","outline":"0px solid #efefef","outlineOffset":"4px","borderRadius":"8px","flex":"1","borderWidth":"1px","background":"#fff","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text" name="username" required lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"width":"80%","margin":"0 0 20px","flexWrap":"wrap","display":"flex"}' class="form-item">
				    <div class="layui-form-label" v-if="false" :style='{"width":"64px","padding":"0 10px 0 0","lineHeight":"44px","fontSize":"14px","color":"#333"}'>密码</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","borderColor":"#ddd","color":"#333","outline":"0px solid #efefef","outlineOffset":"4px","borderRadius":"8px","flex":"1","borderWidth":"1px","background":"#fff","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
				<div v-if="roles.length>1" :style='{"width":"100%","margin":"10px 10%","lineHeight":"44px","background":"none","height":"44px"}' class="form-item l-redio">
					<input v-for="(item,index) in roles" v-bind:key="index" type="radio" name="role" id="role" :value="item.tableName" :title="item.roleName">
				</div>
				<div :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"0","margin":"0","borderColor":"#ddd","borderRadius":"10px","background":"none","borderWidth":"0px","width":"80%","position":"relative","borderStyle":"solid","height":"auto","order":"2"}'>
					<button :style='{"border":"0","cursor":"pointer","padding":"0px 10px","margin":"0px auto 0","borderColor":"#cca162","color":"#333","display":"block","letterSpacing":"4px","minWidth":"120px","outline":"none","borderRadius":"0","background":"linear-gradient(0deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","borderWidth":"0px","width":"100%","fontSize":"16px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="login">登录</button>
				</div>
				<div :style='{"padding":"0px","margin":"0 0px 20px 0","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"center","height":"auto"}'>
					<a :style='{"cursor":"pointer","padding":"0 20px","margin":"0 10px 10px 0","borderColor":"#eee","color":"#20ad9e","textAlign":"center","textDecoration":"none","minWidth":"100px","borderRadius":"0px","borderWidth":"0px","background":"none","lineHeight":"44px","fontSize":"16px","borderStyle":"solid"}' v-if="item.tableName!='users'&&item.hasFrontRegister=='是'" v-for="(item,index) in menu" v-bind:key="index" :href="'javascript:registerClick(\''+item.tableName+'\')'">注册{{item.roleName.replace('注册','')}}</a>
				</div>
			</form>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
				<script>
			var vue = new Vue({
				el: '#login',
				data: {
					menu: menu,
                    roles: []
				},
                created(){
                    for(let item in this.menu) {
                        if(this.menu[item].hasFrontLogin=='是') {
                                this.roles.push(this.menu[item]);
                        }
                    }       
                },
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})
			
			var codes = [{
					num: 1,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }, {
					num: 2,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }, {
					num: 3,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }, {
					num: 4,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }]

			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;
				
				function randomString() {
					var len = 4;
					var chars = [
					  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
					  'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
					  'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
					  'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
					  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
					  '3', '4', '5', '6', '7', '8', '9'
					]
					var colors = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
					var sizes = ['14', '15', '16', '17', '18']
					
					var output = []
					for (var i = 0; i < len; i++) {
					  // 随机验证码
					  var key = Math.floor(Math.random() * chars.length)
					  codes[i].num = chars[key]
					  // 随机验证码颜色
					  var code = '#'
					  for (var j = 0; j < 6; j++) {
					    var key = Math.floor(Math.random() * colors.length)
					    code += colors[key]
					  }
					  codes[i].color = code
					  // 随机验证码方向
					  var rotate = Math.floor(Math.random() * 45)
					  var plus = Math.floor(Math.random() * 2)
					  if (plus == 1) rotate = '-' + rotate
					  codes[i].rotate = 'rotate(' + rotate + 'deg)'
					  // 随机验证码字体大小
					  var size = Math.floor(Math.random() * sizes.length)
					  codes[i].size = sizes[size] + 'px'
					}
					
					var str = ''
					for(var i = 0;i<codes.length;i++) {
						str += '<span style="color:' + codes[i].color + ';transform:' + codes[i].rotate + ';fontSize:' + codes[i].size + ';padding: 0 3px;display:inline-block">'+codes[i].num+'</span>'
					}
					jquery('#nums').html('').append(str);
				}
				
				jquery('#nums').click(function(){
					randomString();
				})
				
				randomString();

				// 登录
				form.on('submit(login)', function(data) {
					data = data.field;
                    if (vue.roles.length!=1) {
                        if (!data.role) {
                            layer.msg('请选择登录用户类型', {
                            time: 2000,
                            icon: 5
                            });
                            return false;
                        }
                    } else {
                            data.role = vue.roles[0].tableName;
                    }
					
					http.request(data.role + '/login', 'get', data, function(res) {
						layer.msg('登录成功', {
							time: 2000,
							icon: 6
						});
						// 登录凭证
						localStorage.setItem('Token', res.token);
                        var roleName = "";
                        if(typeof(jquery('#role:checked').attr('title')) == "undefined") {
                            roleName = vue.roles[0].roleName;
                        } else {
                            roleName = jquery('#role:checked').attr('title');
                        }
                        localStorage.setItem('role', roleName);
						// 当前登录用户角色
						localStorage.setItem('userTable', data.role);
						localStorage.setItem('sessionTable', data.role);
						// 用户名称
						localStorage.setItem('adminName', data.username);
						http.request(data.role + '/session', 'get', {}, function(res) {
							// 用户id
							localStorage.setItem('userid', res.data.id);
							if(res.data.vip) {
								localStorage.setItem('vip', res.data.vip);
							}
                            if(res.data.touxiang) {
                                localStorage.setItem('headportrait', res.data.touxiang);
                            } else if(res.data.headportrait) {
                                localStorage.setItem('headportrait', res.data.headportrait);
                            }
							// 路径访问设置
							window.location.href = '../../index.jsp';
						})
						
					});
					return false
				});

			});

			/**
			 * 跳转登录
			 * @param {Object} tablename
			 */
			function registerClick(tablename) {
				window.location.href = '../' + tablename + '/register.jsp?tablename=' + tablename;
			}
		</script>
	</body>
</html>
