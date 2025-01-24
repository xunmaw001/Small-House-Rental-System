package com.entity.view;

import com.entity.FangyuanchengshiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 房源城市
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
@TableName("fangyuanchengshi")
public class FangyuanchengshiView  extends FangyuanchengshiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public FangyuanchengshiView(){
	}
 
 	public FangyuanchengshiView(FangyuanchengshiEntity fangyuanchengshiEntity){
 	try {
			BeanUtils.copyProperties(this, fangyuanchengshiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
