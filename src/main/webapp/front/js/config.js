
var projectName = '基于B/S模式的小型房屋租赁系统的设计与实现';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

{
	name: '我的收藏',
	url: '../storeup/list.jsp?storeupType=1'
},
]


var indexNav = [

{
	name: '房源信息',
	url: './pages/fangyuanxinxi/list.jsp'
}, 

{
	name: '交流论坛',
	url: './pages/forum/list.jsp'
}, 
{
	name: '系统公告',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmt65a9/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除"],"menu":"房东","menuJump":"列表","tableName":"fangdong"}],"menu":"房东管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["新增","查看","修改","删除"],"menu":"租户","menuJump":"列表","tableName":"zuhu"}],"menu":"租户管理"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["新增","查看","修改","删除"],"menu":"房源城市","menuJump":"列表","tableName":"fangyuanchengshi"}],"menu":"房源城市管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["新增","查看","修改","删除"],"menu":"房源类型","menuJump":"列表","tableName":"fangyuanleixing"}],"menu":"房源类型管理"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","修改","删除","审核","查看评论"],"menu":"房源信息","menuJump":"列表","tableName":"fangyuanxinxi"}],"menu":"房源信息管理"},{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","修改","删除"],"menu":"预定房子","menuJump":"列表","tableName":"yudingfangzi"}],"menu":"预定房子管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","修改","删除"],"menu":"合同信息","menuJump":"列表","tableName":"hetongxinxi"}],"menu":"合同信息管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","修改","删除"],"menu":"退租信息","menuJump":"列表","tableName":"tuizuxinxi"}],"menu":"退租信息管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["查看","修改","删除"],"menu":"交流论坛","tableName":"forum"}],"menu":"交流论坛"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"系统公告","tableName":"news"},{"appFrontIcon":"cuIcon-list","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-camera","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-camera","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","查看评论","预定"],"menu":"房源信息列表","menuJump":"列表","tableName":"fangyuanxinxi"}],"menu":"房源信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["新增","查看","修改","删除","查看评论"],"menu":"房源信息","menuJump":"列表","tableName":"fangyuanxinxi"}],"menu":"房源信息管理"},{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","删除","合同"],"menu":"预定房子","menuJump":"列表","tableName":"yudingfangzi"}],"menu":"预定房子管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","删除","修改"],"menu":"合同信息","menuJump":"列表","tableName":"hetongxinxi"}],"menu":"合同信息管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","审核","删除"],"menu":"退租信息","menuJump":"列表","tableName":"tuizuxinxi"}],"menu":"退租信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","查看评论","预定"],"menu":"房源信息列表","menuJump":"列表","tableName":"fangyuanxinxi"}],"menu":"房源信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"房东","tableName":"fangdong"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","删除"],"menu":"预定房子","menuJump":"列表","tableName":"yudingfangzi"}],"menu":"预定房子管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","支付","删除","退租"],"menu":"合同信息","menuJump":"列表","tableName":"hetongxinxi"}],"menu":"合同信息管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["修改","删除","查看"],"menu":"退租信息","menuJump":"列表","tableName":"tuizuxinxi"}],"menu":"退租信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","查看评论","预定"],"menu":"房源信息列表","menuJump":"列表","tableName":"fangyuanxinxi"}],"menu":"房源信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"租户","tableName":"zuhu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
