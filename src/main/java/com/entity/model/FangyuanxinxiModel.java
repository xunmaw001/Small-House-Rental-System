package com.entity.model;

import com.entity.FangyuanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 房源信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
public class FangyuanxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 地址
	 */
	
	private String dizhi;
		
	/**
	 * 房源城市
	 */
	
	private String fangyuanchengshi;
		
	/**
	 * 是否装修
	 */
	
	private String shifouzhuangxiu;
		
	/**
	 * 面积/㎡
	 */
	
	private String mianji;
		
	/**
	 * 月租/元
	 */
	
	private Float yuezu;
		
	/**
	 * 押金/元
	 */
	
	private Float yajin;
		
	/**
	 * 朝向
	 */
	
	private String chaoxiang;
		
	/**
	 * 封面
	 */
	
	private String fengmian;
		
	/**
	 * 房源类型
	 */
	
	private String fangyuanleixing;
		
	/**
	 * 房东账号
	 */
	
	private String fangdongzhanghao;
		
	/**
	 * 房东姓名
	 */
	
	private String fangdongxingming;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 配套详情
	 */
	
	private String peitaoxiangqing;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
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
	 * 设置：是否装修
	 */
	 
	public void setShifouzhuangxiu(String shifouzhuangxiu) {
		this.shifouzhuangxiu = shifouzhuangxiu;
	}
	
	/**
	 * 获取：是否装修
	 */
	public String getShifouzhuangxiu() {
		return shifouzhuangxiu;
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
	 * 设置：朝向
	 */
	 
	public void setChaoxiang(String chaoxiang) {
		this.chaoxiang = chaoxiang;
	}
	
	/**
	 * 获取：朝向
	 */
	public String getChaoxiang() {
		return chaoxiang;
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
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：配套详情
	 */
	 
	public void setPeitaoxiangqing(String peitaoxiangqing) {
		this.peitaoxiangqing = peitaoxiangqing;
	}
	
	/**
	 * 获取：配套详情
	 */
	public String getPeitaoxiangqing() {
		return peitaoxiangqing;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
