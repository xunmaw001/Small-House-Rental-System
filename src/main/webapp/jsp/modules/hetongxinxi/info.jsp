<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->

		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">编辑合同信息</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>合同信息管理</span></li>
				<li class="breadcrumb-item-two"><span>编辑合同信息</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>房源名称</label>

					<input id="fangyuanmingcheng" name="fangyuanmingcheng" class="form-control" v-model="ruleForm.fangyuanmingcheng" readonly>
				</div>
				<div class="form-item">
					<label>地址</label>

					<input id="dizhi" name="dizhi" class="form-control" v-model="ruleForm.dizhi" readonly>
				</div>
				<div class="form-item">
					<label>房源类型</label>

					<input id="fangyuanleixing" name="fangyuanleixing" class="form-control" v-model="ruleForm.fangyuanleixing" readonly>
				</div>
				<div class="form-item">
					<label>房源城市</label>

					<input id="fangyuanchengshi" name="fangyuanchengshi" class="form-control" v-model="ruleForm.fangyuanchengshi" readonly>
				</div>
				<div class="form-item-img">
					<label>封面</label>

                    <div style="display: flex;align-items: center;">
                        <div v-for="(item,index) in fengmianImgList" :key="index" style="position: relative;">
                            <img :src="baseUrl + item" width="100" height="100">
                        </div>
                    </div>
				</div>
				<div class="form-item">
					<label>面积/㎡</label>

					<input id="mianji" name="mianji" class="form-control" v-model="ruleForm.mianji" readonly>
				</div>
				<div class="form-item">
					<label>月租/元</label>

					<input id="yuezu" name="yuezu" class="form-control" v-model="ruleForm.yuezu" readonly>
				</div>
				<div class="form-item">
					<label>租期/月</label>

					<input id="zuqi" name="zuqi" class="form-control" v-model="ruleForm.zuqi" readonly>
				</div>
				<div class="form-item">
					<label>押金/元</label>

					<input id="yajin" name="yajin" class="form-control" v-model="ruleForm.yajin" readonly>
				</div>
				<div class="form-item">
					<label>总金额/元</label>

					<input id="zongjine" name="zongjine" class="form-control" v-model="ruleForm.zongjine" readonly>
				</div>
				<div class="form-item">
					<label>房东账号</label>

					<input id="fangdongzhanghao" name="fangdongzhanghao" class="form-control" v-model="ruleForm.fangdongzhanghao" readonly>
				</div>
				<div class="form-item">
					<label>房东姓名</label>

					<input id="fangdongxingming" name="fangdongxingming" class="form-control" v-model="ruleForm.fangdongxingming" readonly>
				</div>
				<div class="form-item">
					<label>租户账号</label>

					<input id="zuhuzhanghao" name="zuhuzhanghao" class="form-control" v-model="ruleForm.zuhuzhanghao" readonly>
				</div>
				<div class="form-item">
					<label>租户姓名</label>

					<input id="zuhuxingming" name="zuhuxingming" class="form-control" v-model="ruleForm.zuhuxingming" readonly>
				</div>
				<div class="form-item">
					<label>手机</label>

					<input id="shouji" name="shouji" class="form-control" v-model="ruleForm.shouji" readonly>
				</div>
				<div class="form-item">
					<label>签订时间</label>

					<input id="qiandingshijian" name="qiandingshijian" class="form-control" v-model="ruleForm.qiandingshijian" readonly>
				</div>
				<div class="form-item-file">
					<label>合同信息</label>

					<button class="btn-upload btn-file" id="hetongxinxi">点击下载</button>
				</div>
				<div class="form-item">
					<label>起效时间</label>

					<input id="qixiaoshijian" name="qixiaoshijian" class="form-control" v-model="ruleForm.qixiaoshijian" readonly>
				</div>
				<div class="form-item">
					<label>截止时间</label>

					<input id="jiezhishijian" name="jiezhishijian" class="form-control" v-model="ruleForm.jiezhishijian" readonly>
				</div>
				<div class="form-item">
					<label>是否支付</label>

					<input id="ispay" name="ispay" class="form-control" v-model="ruleForm.ispay" readonly>
				</div>

				<div class="form-btn">
					<button id="exitBtn" type="button" class="btn btn-primary btn-close">返回</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "hetongxinxi";
		var pageType = "add-or-update";
		var updateId = "";		

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
                fengmianImgList:[],
                baseUrl: baseUrl,
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "hetongxinxi/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 填充富文本框
		function setContent(){
		}  

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				updateId = id;
				window.sessionStorage.removeItem('id');
				$.ajax({ 
	                type: "GET",
	                url: baseUrl + "hetongxinxi/info/" + id,
	                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
	                success: function(res){           
	                	if(res.code == 0){
	                		ruleForm = res.data
							showImg();
							setContent();		
							setMediaUrl();	
							setDownloadBtn();
			    		}else if(res.code ==401){
			    			 <%@ include file="../../static/toLogin.jsp"%>	
			    		}else{
							 alert(res.msg);
						}
	                },
	            });
			}else{
				$("#submitBtn").addClass("新增");
			}
		}	

		//图片显示
		function showImg(){
			var fengmianFileName = "\"" + ruleForm.fengmian + "\"";
            if(ruleForm.fengmian) {
                vm.fengmianImgList = ruleForm.fengmian.split(',')
            }
		}		
		function exit(){
			window.sessionStorage.removeItem("id");
			window.location.href = "list.jsp";
		}			
		// 下载
		function download(fileName){
			var url = baseUrl+fileName;
			window.open(url);
		}	
		//设置下载
		function setDownloadBtn(){
			var hetongxinxiUrl = "download('" + ruleForm.hetongxinxi + "')";
			$("#hetongxinxi").attr("onclick",hetongxinxiUrl);
		}			
		//设置音视频播放链接
		function setMediaUrl(){
		}	
		//打开新窗口播放媒体
		function mediaPlay(url){
			//var url = baseUrl + "upload/" + fileName;
			window.open(baseUrl+url);
		}		
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			setMenu();
			$('#exitBtn').on('click', function(e) {
			    e.preventDefault();
				exit();
			});
			getDetails();
			<%@ include file="../../static/myInfo.js"%>
		});			
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>	
	</script>
</body>

</html>
