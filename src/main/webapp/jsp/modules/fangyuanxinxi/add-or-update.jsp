<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

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
		label.error{
			color: red !important;
			width: auto !important;
		}
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
			<h3 class="breadcrumb-title">编辑房源信息</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>房源信息管理</span></li>
				<li class="breadcrumb-item-two"><span>编辑房源信息</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>房源名称</label>
					<input name="fangyuanmingcheng" id="fangyuanmingcheng" name="fangyuanmingcheng" class="form-control" placeholder="请输入房源名称">
				</div>
				<div class="form-item">
					<label>地址</label>
					<input name="dizhi" id="dizhi" name="dizhi" class="form-control" placeholder="请输入地址">
				</div>
				<div class="form-item">
					<label>房源城市</label>
					<select id="fangyuanchengshiSelect" name="fangyuanchengshi" class="form-control">
							<option value="">请选择房源城市</option>
					</select>	
				</div>	
				<div class="form-item">
					<label>是否装修</label>
					<select id="shifouzhuangxiuSelect" name="shifouzhuangxiu" class="form-control">
							<option value="">请选择是否装修</option>
							<option class="shifouzhuangxiuOption" value="是">
								是
							</option>
							<option class="shifouzhuangxiuOption" value="否">
								否
							</option>
					</select>	
				</div>	
				<div class="form-item">
					<label>面积/㎡</label>
					<input name="mianji" id="mianji" name="mianji" class="form-control" placeholder="请输入面积/㎡">
				</div>
				<div class="form-item">
					<label>月租/元</label>
					<input name="yuezu" id="yuezu" name="yuezu" class="form-control" placeholder="请输入月租/元">
				</div>
				<div class="form-item">
					<label>押金/元</label>
					<input name="yajin" id="yajin" name="yajin" class="form-control" placeholder="请输入押金/元">
				</div>
				<div class="form-item">
					<label>朝向</label>
					<input name="chaoxiang" id="chaoxiang" name="chaoxiang" class="form-control" placeholder="请输入朝向">
				</div>
				<div class="form-item-img">
					<label>封面</label>
                    <div style="display: flex;align-items: center;">
                        <div v-for="(item,index) in fengmianImgList" :key="index" style="position: relative;">
                            <div style="position: absolute;right: 10px;top: 0;width: 32px;height: 32px;background: #fff;padding: 6px;font-size: 0;cursor: pointer;border-radius: 0 20px 0 0;" @click="fengmianDelClick(index)">
                                <img src="../../../resources/images/shanchu.png" style="width: 20px;height: 20px;margin: 0;box-shadow: none;min-height:20px">
                            </div>
                            <img :src="baseUrl + item" width="100" height="100">
                        </div>
                    </div>
					<div class="upload btn-img">选择文件<input name="file" type="file" id="fengmianupload" class="form-control-file"></div>
					<input name="fengmian" id="fengmian-input" type="hidden">
				</div>
				<div class="form-item">
					<label>房源类型</label>
					<select id="fangyuanleixingSelect" name="fangyuanleixing" class="form-control">
							<option value="">请选择房源类型</option>
					</select>	
				</div>	
				<div class="form-item">
					<label>房东账号</label>
					<input name="fangdongzhanghao" id="fangdongzhanghao" name="fangdongzhanghao" class="form-control" placeholder="请输入房东账号">
				</div>
				<div class="form-item">
					<label>房东姓名</label>
					<input name="fangdongxingming" id="fangdongxingming" name="fangdongxingming" class="form-control" placeholder="请输入房东姓名">
				</div>
				<div class="form-item">
					<label>联系电话</label>
					<input name="lianxidianhua" id="lianxidianhua" name="lianxidianhua" class="form-control" placeholder="请输入联系电话">
				</div>
										
				<div class="form-item-file" >
					<label>配套详情</label>
					<div class="upload btn-file">
						插入图片
						<input id="peitaoxiangqingupload" name="file" type="file">
					</div>
					<script id="peitaoxiangqingEditor" type="text/plain"></script>
					<script type="text/javascript">
						//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
					   //相见文档配置属于你自己的编译器
					 var peitaoxiangqingUe = UE.getEditor('peitaoxiangqingEditor', {
						toolbars: [
							[
								'undo', //撤销
								'bold', //加粗
								'redo', //重做
								'underline', //下划线
								'horizontal', //分隔线
								'inserttitle', //插入标题
								'cleardoc', //清空文档
								'fontfamily', //字体
								'fontsize', //字号
								'paragraph', //段落格式
								'inserttable', //插入表格
								'justifyleft', //居左对齐
								'justifyright', //居右对齐
								'justifycenter', //居中对
								'justifyjustify', //两端对齐
								'forecolor', //字体颜色
								'fullscreen', //全屏
								'edittip ', //编辑提示
								'customstyle', //自定义标题
								 ]
							]
						});
					</script>
					<input type="hidden" name="peitaoxiangqing" id="peitaoxiangqing-input">
				</div>
				<div class="form-btn">
					<button  id="submitBtn" type="button" class="btn btn-primary btn-add">提交</button>
					<button id="exitBtn" type="button" class="btn btn-primary btn-close">取消</button>
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
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../static/utils.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "fangyuanxinxi";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};

		var fangyuanchengshiOptions = [];
		var fangyuanleixingOptions = [];


		function fangyuanchengshiSelect(){
			http("option/fangyuanchengshi/fangyuanchengshi","GET",{},(res)=>{
				if(res.code == 0){
					fangyuanchengshiOptions = res.data;
					var fangyuanchengshiSelect = document.getElementById('fangyuanchengshiSelect');
					for(var i=0;i<fangyuanchengshiOptions.length;i++){
						var fangyuanchengshiOption = document.createElement('option');
						fangyuanchengshiOption.setAttribute('name','fangyuanchengshiOption');
						fangyuanchengshiOption.setAttribute('value',fangyuanchengshiOptions[i]);
						fangyuanchengshiOption.innerHTML = fangyuanchengshiOptions[i];									
						if(ruleForm.fangyuanchengshi == fangyuanchengshiOptions[i]){
							fangyuanchengshiOption.setAttribute('selected','selected');
						}
						fangyuanchengshiSelect.appendChild(fangyuanchengshiOption);
					}
				}
			});
		}	
		function fangyuanleixingSelect(){
			http("option/fangyuanleixing/fangyuanleixing","GET",{},(res)=>{
				if(res.code == 0){
					fangyuanleixingOptions = res.data;
					var fangyuanleixingSelect = document.getElementById('fangyuanleixingSelect');
					for(var i=0;i<fangyuanleixingOptions.length;i++){
						var fangyuanleixingOption = document.createElement('option');
						fangyuanleixingOption.setAttribute('name','fangyuanleixingOption');
						fangyuanleixingOption.setAttribute('value',fangyuanleixingOptions[i]);
						fangyuanleixingOption.innerHTML = fangyuanleixingOptions[i];									
						if(ruleForm.fangyuanleixing == fangyuanleixingOptions[i]){
							fangyuanleixingOption.setAttribute('selected','selected');
						}
						fangyuanleixingSelect.appendChild(fangyuanleixingOption);
					}
				}
			});
		}	

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
              fengmianImgList:[],
              baseUrl:baseUrl,
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "fangyuanxinxi/info/" + id,
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
			methods: { 
                fengmianDelClick(index){
                    var mymessage = confirm("确定移除图片？");
                    if (mymessage == true) {
                        this.fengmianImgList.splice(index,1)  
                    }
                    
                },
            }
	  	});		

		// 文件上传
		function upload(){
			$('#fengmianupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('fengmian-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('fengmianFileName') != null){
						document.getElementById('fengmianFileName').innerHTML = "上传成功!";
					}				
                    vm.fengmianImgList.push("upload/"+data.result.file)
				}
			});
			$('#peitaoxiangqingupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {	
					UE.getEditor('peitaoxiangqingEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560>');					
				}
			});
		}  
		//取消 
		function cancel() {
            window.location.href = "list.jsp";
		}
		function getQueryString(name) { 
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
			var r = window.location.search.substr(1).match(reg); 
			if (r != null) return unescape(r[2]); 
			return null; 
		}

		// 表单提交
		function submit() {

			var crossFlag = getQueryString("cross");
			if(validform() ==true && compare() == true){
				if(crossFlag) {
				}
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
                if(vm.fengmianImgList.length){
                    data.fengmian = vm.fengmianImgList.join(',')
                }
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(crossFlag) {
					var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
					var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					if(statusColumnName!='') {
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}
							}
							var table = window.sessionStorage.getItem('crossTableName');
							httpJson(crossTableName + "/update","POST",obj,(res)=>{
								if(res.code == 0){
									console.log('更新属性成功');
								}
							});   
						} else  {
							crossuserid = Number(window.sessionStorage.getItem('userid'));
							crossrefid = obj["id"];
							crossoptnum = window.sessionStorage.getItem('statusColumnName');
							crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					data.crossuserid=crossuserid;
					data.crossrefid=crossrefid;
					http("fangyuanxinxi/page","GET",{
						page:1,
						limit:10,
						crossuserid:data.crossuserid,
						crossrefid:data.crossrefid,			
					},(res)=>{
						if(res.data.total >= crossoptnum){
							alert(window.sessionStorage.getItem('tips'));
							return false;
						} else {
							httpJson("fangyuanxinxi/"+urlParam,"POST",data,(res)=>{
								if(res.code == 0){
									window.sessionStorage.removeItem('id');
									let flag = true;
									if(crossFlag) {
									}

									if(flag){
										alert(successMes);
									}
									if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
										window.sessionStorage.removeItem('onlyme');
										window.location.href="${pageContext.request.contextPath}/index.jsp";
									}else{
                                        window.location.href = "list.jsp";
									}
									
								}
							});
						}
					});
				} else {
					httpJson("fangyuanxinxi/"+urlParam,"POST",data,(res)=>{
						if(res.code == 0){
							window.sessionStorage.removeItem('id');
							let flag = true;
							if(crossFlag) {
							}

							if(flag){
								alert(successMes);
							}
							if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
								window.sessionStorage.removeItem('onlyme');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
                                        window.location.href = "list.jsp";
							}
							
						}
					});
				}
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
			if(ruleForm.peitaoxiangqing != null && ruleForm.peitaoxiangqing != 'null' && ruleForm.peitaoxiangqing != ''){
				var peitaoxiangqingMes = '' + ruleForm.peitaoxiangqing;
				var peitaoxiangqingUeditor = UE.getEditor('peitaoxiangqingEditor');
				peitaoxiangqingUeditor.ready(function() {
					peitaoxiangqingUeditor.setContent(peitaoxiangqingMes);
				});
			}
		}  

		// 获取富文本框内容
		function getContent(){
			if(UE.getEditor('peitaoxiangqingEditor').hasContents()){
				$('#peitaoxiangqing-input').attr('value',UE.getEditor('peitaoxiangqingEditor').getContent());
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    fangyuanmingcheng: {
					},
				    dizhi: {
					},
				    fangyuanchengshi: {
					},
				    shifouzhuangxiu: {
					},
				    mianji: {
					},
				    yuezu: {
					number: true,
					},
				    yajin: {
					number: true,
					},
				    chaoxiang: {
					},
				    fengmian: {
					},
				    fangyuanleixing: {
					},
				    fangdongzhanghao: {
					},
				    fangdongxingming: {
					},
				    lianxidianhua: {
					},
				    peitaoxiangqing: {
					},
				    sfsh: {
					},
				    shhf: {
					},
				    clicktime: {
					},
				    clicknum: {
					digits: true,
					},
				},
				messages: {
					dizhi: {
					},
					fangyuanchengshi: {
					},
					shifouzhuangxiu: {
					},
					mianji: {
					},
					yuezu: {
						number: "请输入数字",	
					},
					yajin: {
						number: "请输入数字",	
					},
					chaoxiang: {
					},
					fengmian: {
					},
					fangyuanleixing: {
					},
					fangdongzhanghao: {
					},
					fangdongxingming: {
					},
					lianxidianhua: {
					},
					peitaoxiangqing: {
					},
					sfsh: {
					},
					shhf: {
					},
					clicktime: {
					},
					clicknum: {
						digits: "请输入整数",
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(19[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("fangyuanxinxi/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												fangyuanchengshiSelect();
						fangyuanleixingSelect();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				fangyuanchengshiSelect();	
				fangyuanleixingSelect();	



		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#clicktime-input").datetimepicker({ 
				autoclose: true,
				format:'yyyy-mm-dd hh:ii:00',
				minuteStep:1,
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;



		}		
		function calculationSE(colName){
			//单列求和接口
			http("fangyuanxinxi"+colName,"GET",{
				tableName: "fangyuanxinxi",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){
				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						if(res.data !=null && res.data.fangdongzhanghao != null && res.data.fangdongzhanghao != ''){
							$('#fangdongzhanghao').val(res.data.fangdongzhanghao)
							$("#fangdongzhanghao").attr('readonly','readonly');
						}
						if(res.data !=null && res.data.fangdongxingming != null && res.data.fangdongxingming != ''){
							$('#fangdongxingming').val(res.data.fangdongxingming)
							$("#fangdongxingming").attr('readonly','readonly');
						}
						if(res.data !=null && res.data.lianxidianhua != null && res.data.lianxidianhua != ''){
							$('#lianxidianhua').val(res.data.lianxidianhua)
							$("#lianxidianhua").attr('readonly','readonly');
						}
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#fangyuanmingcheng").val(ruleForm.fangyuanmingcheng);	
			$("#dizhi").val(ruleForm.dizhi);	
			var fangyuanchengshiOptions = document.getElementsByClassName("fangyuanchengshiOption");
			for(var fangyuanchengshiCount = 0; fangyuanchengshiCount < fangyuanchengshiOptions.length;fangyuanchengshiCount++){
				if(fangyuanchengshiOptions[fangyuanchengshiCount].getAttribute('value') == ruleForm.fangyuanchengshi){
					fangyuanchengshiOptions[fangyuanchengshiCount].setAttribute('selected','selected');
				}
			}
			var shifouzhuangxiuOptions = document.getElementsByClassName("shifouzhuangxiuOption");
			for(var shifouzhuangxiuCount = 0; shifouzhuangxiuCount < shifouzhuangxiuOptions.length;shifouzhuangxiuCount++){
				if(shifouzhuangxiuOptions[shifouzhuangxiuCount].getAttribute('value') == ruleForm.shifouzhuangxiu){
					shifouzhuangxiuOptions[shifouzhuangxiuCount].setAttribute('selected','selected');
				}
			}
			$("#mianji").val(ruleForm.mianji);	
			$("#yuezu").val(ruleForm.yuezu);	
			$("#yajin").val(ruleForm.yajin);	
			$("#chaoxiang").val(ruleForm.chaoxiang);	
            if(ruleForm.fengmian){
                vm.fengmianImgList = ruleForm.fengmian.split(',')
            }
			$("#fengmian-input").val(ruleForm.fengmian);
			var fangyuanleixingOptions = document.getElementsByClassName("fangyuanleixingOption");
			for(var fangyuanleixingCount = 0; fangyuanleixingCount < fangyuanleixingOptions.length;fangyuanleixingCount++){
				if(fangyuanleixingOptions[fangyuanleixingCount].getAttribute('value') == ruleForm.fangyuanleixing){
					fangyuanleixingOptions[fangyuanleixingCount].setAttribute('selected','selected');
				}
			}
			$("#fangdongzhanghao").val(ruleForm.fangdongzhanghao);	
			$("#fangdongxingming").val(ruleForm.fangdongxingming);	
			$("#lianxidianhua").val(ruleForm.lianxidianhua);	
			$("#peitaoxiangqing").val(ruleForm.peitaoxiangqing);	
			$("#shhf").val(ruleForm.shhf);	

		}		
		//图片显示
		function showImg(){
			var fengmianFileName = "\"" + ruleForm.fengmian + "\"";
			$("#fengmianImg").attr("src",baseUrl+ruleForm.fengmian);
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.fangyuanmingcheng != null && res.data.fangyuanmingcheng != ''){

						$("#fangyuanmingcheng").val(res.data.fangyuanmingcheng);
						$("#fangyuanmingcheng").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.dizhi != null && res.data.dizhi != ''){

						$("#dizhi").val(res.data.dizhi);
						$("#dizhi").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.fangyuanchengshi != null && res.data.fangyuanchengshi != ''){

						var fangyuanchengshiOptions = document.getElementsByClassName("fangyuanchengshiOption");
						for(var fangyuanchengshiCount = 0; fangyuanchengshiCount < fangyuanchengshiOptions.length;fangyuanchengshiCount++){
							if(fangyuanchengshiOptions[fangyuanchengshiCount].getAttribute('value') == res.data.fangyuanchengshi){
								fangyuanchengshiOptions[fangyuanchengshiCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.shifouzhuangxiu != null && res.data.shifouzhuangxiu != ''){

						var shifouzhuangxiuOptions = document.getElementsByClassName("shifouzhuangxiuOption");
						for(var shifouzhuangxiuCount = 0; shifouzhuangxiuCount < shifouzhuangxiuOptions.length;shifouzhuangxiuCount++){
							if(shifouzhuangxiuOptions[shifouzhuangxiuCount].getAttribute('value') == res.data.shifouzhuangxiu){
								shifouzhuangxiuOptions[shifouzhuangxiuCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.mianji != null && res.data.mianji != ''){

						$("#mianji").val(res.data.mianji);
						$("#mianji").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yuezu != null && res.data.yuezu != ''){

						$("#yuezu").val(res.data.yuezu);
						$("#yuezu").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yajin != null && res.data.yajin != ''){

						$("#yajin").val(res.data.yajin);
						$("#yajin").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.chaoxiang != null && res.data.chaoxiang != ''){

						$("#chaoxiang").val(res.data.chaoxiang);
						$("#chaoxiang").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.fengmian != null && res.data.fengmian != ''){

                        vm.fengmianImgList = res.data.fengmian.split(',')
					}
					if(res.data != null && res.data != '' && res.data.fangyuanleixing != null && res.data.fangyuanleixing != ''){

						var fangyuanleixingOptions = document.getElementsByClassName("fangyuanleixingOption");
						for(var fangyuanleixingCount = 0; fangyuanleixingCount < fangyuanleixingOptions.length;fangyuanleixingCount++){
							if(fangyuanleixingOptions[fangyuanleixingCount].getAttribute('value') == res.data.fangyuanleixing){
								fangyuanleixingOptions[fangyuanleixingCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.fangdongzhanghao != null && res.data.fangdongzhanghao != ''){

						$("#fangdongzhanghao").val(res.data.fangdongzhanghao);
						$("#fangdongzhanghao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.fangdongxingming != null && res.data.fangdongxingming != ''){

						$("#fangdongxingming").val(res.data.fangdongxingming);
						$("#fangdongxingming").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.lianxidianhua != null && res.data.lianxidianhua != ''){

						$("#lianxidianhua").val(res.data.lianxidianhua);
						$("#lianxidianhua").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.peitaoxiangqing != null && res.data.peitaoxiangqing != ''){

						$("#peitaoxiangqing").val(res.data.peitaoxiangqing);
                        var peitaoxiangqingMes = '' + res.data.peitaoxiangqing;
                        var peitaoxiangqingUeditor = UE.getEditor('peitaoxiangqingEditor');
                        peitaoxiangqingUeditor.ready(function() {
                            peitaoxiangqingUeditor.setContent(peitaoxiangqingMes);
                        });
					}
					if(res.data != null && res.data != '' && res.data.sfsh != null && res.data.sfsh != ''){

					}
					if(res.data != null && res.data != '' && res.data.shhf != null && res.data.shhf != ''){

						$("#shhf").val(res.data.shhf);
						$("#shhf").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.clicktime != null && res.data.clicktime != ''){

					}
					if(res.data != null && res.data != '' && res.data.clicknum != null && res.data.clicknum != ''){

					}
				}
			});  
            }
		window.sessionStorage.removeItem('crossTableName');
		window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
            if(window.sessionStorage.getItem('role')!="管理员") {
				$('#money').attr('readonly','readonly');
            }
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(parseInt(largerVal)<=parseInt(smallerVal)){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
