package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FangyuanchengshiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FangyuanchengshiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FangyuanchengshiView;


/**
 * 房源城市
 *
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
public interface FangyuanchengshiService extends IService<FangyuanchengshiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FangyuanchengshiVO> selectListVO(Wrapper<FangyuanchengshiEntity> wrapper);
   	
   	FangyuanchengshiVO selectVO(@Param("ew") Wrapper<FangyuanchengshiEntity> wrapper);
   	
   	List<FangyuanchengshiView> selectListView(Wrapper<FangyuanchengshiEntity> wrapper);
   	
   	FangyuanchengshiView selectView(@Param("ew") Wrapper<FangyuanchengshiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FangyuanchengshiEntity> wrapper);
   	

}

