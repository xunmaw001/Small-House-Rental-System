package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YudingfangziEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YudingfangziVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YudingfangziView;


/**
 * 预定房子
 *
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
public interface YudingfangziService extends IService<YudingfangziEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YudingfangziVO> selectListVO(Wrapper<YudingfangziEntity> wrapper);
   	
   	YudingfangziVO selectVO(@Param("ew") Wrapper<YudingfangziEntity> wrapper);
   	
   	List<YudingfangziView> selectListView(Wrapper<YudingfangziEntity> wrapper);
   	
   	YudingfangziView selectView(@Param("ew") Wrapper<YudingfangziEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YudingfangziEntity> wrapper);
   	

}

