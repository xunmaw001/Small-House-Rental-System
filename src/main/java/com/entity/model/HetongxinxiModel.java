package com.entity.model;

import com.entity.HetongxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 合同信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
public class HetongxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 地址
	 */
	
	private String dizhi;
		
	/**
	 * 房源类型
	 */
	
	private String fangyuanleixing;
		
	/**
	 * 房源城市
	 */
	
	private String fangyuanchengshi;
		
	/**
	 * 封面
	 */
	
	private String fengmian;
		
	/**
	 * 面积/㎡
	 */
	
	private String mianji;
		
	/**
	 * 月租/元
	 */
	
	private Float yuezu;
		
	/**
	 * 租期/月
	 */
	
	private Integer zuqi;
		
	/**
	 * 押金/元
	 */
	
	private Float yajin;
		
	/**
	 * 总金额/元
	 */
	
	private Float zongjine;
		
	/**
	 * 房东账号
	 */
	
	private String fangdongzhanghao;
		
	/**
	 * 房东姓名
	 */
	
	private String fangdongxingming;
		
	/**
	 * 租户账号
	 */
	
	private String zuhuzhanghao;
		
	/**
	 * 租户姓名
	 */
	
	private String zuhuxingming;
		
	/**
	 * 手机
	 */
	
	private String shouji;
		
	/**
	 * 签订时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date qiandingshijian;
		
	/**
	 * 合同信息
	 */
	
	private String hetongxinxi;
		
	/**
	 * 起效时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date qixiaoshijian;
		
	/**
	 * 截止时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jiezhishijian;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
				
	
	/**
	 * 设置：地址
	 */
	 
	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}
	
	/**
	 * 获取：地址
	 */
	public String getDizhi() {
		return dizhi;
	}
				
	
	/**
	 * 设置：房源类型
	 */
	 
	public void setFangyuanleixing(String fangyuanleixing) {
		this.fangyuanleixing = fangyuanleixing;
	}
	
	/**
	 * 获取：房源类型
	 */
	public String getFangyuanleixing() {
		return fangyuanleixing;
	}
				
	
	/**
	 * 设置：房源城市
	 */
	 
	public void setFangyuanchengshi(String fangyuanchengshi) {
		this.fangyuanchengshi = fangyuanchengshi;
	}
	
	/**
	 * 获取：房源城市
	 */
	public String getFangyuanchengshi() {
		return fangyuanchengshi;
	}
				
	
	/**
	 * 设置：封面
	 */
	 
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
				
	
	/**
	 * 设置：面积/㎡
	 */
	 
	public void setMianji(String mianji) {
		this.mianji = mianji;
	}
	
	/**
	 * 获取：面积/㎡
	 */
	public String getMianji() {
		return mianji;
	}
				
	
	/**
	 * 设置：月租/元
	 */
	 
	public void setYuezu(Float yuezu) {
		this.yuezu = yuezu;
	}
	
	/**
	 * 获取：月租/元
	 */
	public Float getYuezu() {
		return yuezu;
	}
				
	
	/**
	 * 设置：租期/月
	 */
	 
	public void setZuqi(Integer zuqi) {
		this.zuqi = zuqi;
	}
	
	/**
	 * 获取：租期/月
	 */
	public Integer getZuqi() {
		return zuqi;
	}
				
	
	/**
	 * 设置：押金/元
	 */
	 
	public void setYajin(Float yajin) {
		this.yajin = yajin;
	}
	
	/**
	 * 获取：押金/元
	 */
	public Float getYajin() {
		return yajin;
	}
				
	
	/**
	 * 设置：总金额/元
	 */
	 
	public void setZongjine(Float zongjine) {
		this.zongjine = zongjine;
	}
	
	/**
	 * 获取：总金额/元
	 */
	public Float getZongjine() {
		return zongjine;
	}
				
	
	/**
	 * 设置：房东账号
	 */
	 
	public void setFangdongzhanghao(String fangdongzhanghao) {
		this.fangdongzhanghao = fangdongzhanghao;
	}
	
	/**
	 * 获取：房东账号
	 */
	public String getFangdongzhanghao() {
		return fangdongzhanghao;
	}
				
	
	/**
	 * 设置：房东姓名
	 */
	 
	public void setFangdongxingming(String fangdongxingming) {
		this.fangdongxingming = fangdongxingming;
	}
	
	/**
	 * 获取：房东姓名
	 */
	public String getFangdongxingming() {
		return fangdongxingming;
	}
				
	
	/**
	 * 设置：租户账号
	 */
	 
	public void setZuhuzhanghao(String zuhuzhanghao) {
		this.zuhuzhanghao = zuhuzhanghao;
	}
	
	/**
	 * 获取：租户账号
	 */
	public String getZuhuzhanghao() {
		return zuhuzhanghao;
	}
				
	
	/**
	 * 设置：租户姓名
	 */
	 
	public void setZuhuxingming(String zuhuxingming) {
		this.zuhuxingming = zuhuxingming;
	}
	
	/**
	 * 获取：租户姓名
	 */
	public String getZuhuxingming() {
		return zuhuxingming;
	}
				
	
	/**
	 * 设置：手机
	 */
	 
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
				
	
	/**
	 * 设置：签订时间
	 */
	 
	public void setQiandingshijian(Date qiandingshijian) {
		this.qiandingshijian = qiandingshijian;
	}
	
	/**
	 * 获取：签订时间
	 */
	public Date getQiandingshijian() {
		return qiandingshijian;
	}
				
	
	/**
	 * 设置：合同信息
	 */
	 
	public void setHetongxinxi(String hetongxinxi) {
		this.hetongxinxi = hetongxinxi;
	}
	
	/**
	 * 获取：合同信息
	 */
	public String getHetongxinxi() {
		return hetongxinxi;
	}
				
	
	/**
	 * 设置：起效时间
	 */
	 
	public void setQixiaoshijian(Date qixiaoshijian) {
		this.qixiaoshijian = qixiaoshijian;
	}
	
	/**
	 * 获取：起效时间
	 */
	public Date getQixiaoshijian() {
		return qixiaoshijian;
	}
				
	
	/**
	 * 设置：截止时间
	 */
	 
	public void setJiezhishijian(Date jiezhishijian) {
		this.jiezhishijian = jiezhishijian;
	}
	
	/**
	 * 获取：截止时间
	 */
	public Date getJiezhishijian() {
		return jiezhishijian;
	}
				
	
	/**
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
			
}
