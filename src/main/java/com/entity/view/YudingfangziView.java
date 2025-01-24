package com.entity.view;

import com.entity.YudingfangziEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 预定房子
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
@TableName("yudingfangzi")
public class YudingfangziView  extends YudingfangziEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YudingfangziView(){
	}
 
 	public YudingfangziView(YudingfangziEntity yudingfangziEntity){
 	try {
			BeanUtils.copyProperties(this, yudingfangziEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
