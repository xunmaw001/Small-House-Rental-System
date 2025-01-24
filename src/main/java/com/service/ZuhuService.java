package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZuhuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZuhuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZuhuView;


/**
 * 租户
 *
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
public interface ZuhuService extends IService<ZuhuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZuhuVO> selectListVO(Wrapper<ZuhuEntity> wrapper);
   	
   	ZuhuVO selectVO(@Param("ew") Wrapper<ZuhuEntity> wrapper);
   	
   	List<ZuhuView> selectListView(Wrapper<ZuhuEntity> wrapper);
   	
   	ZuhuView selectView(@Param("ew") Wrapper<ZuhuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZuhuEntity> wrapper);
   	

}

