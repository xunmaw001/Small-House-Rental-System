package com.dao;

import com.entity.TuizuxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.TuizuxinxiVO;
import com.entity.view.TuizuxinxiView;


/**
 * 退租信息
 * 
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
public interface TuizuxinxiDao extends BaseMapper<TuizuxinxiEntity> {
	
	List<TuizuxinxiVO> selectListVO(@Param("ew") Wrapper<TuizuxinxiEntity> wrapper);
	
	TuizuxinxiVO selectVO(@Param("ew") Wrapper<TuizuxinxiEntity> wrapper);
	
	List<TuizuxinxiView> selectListView(@Param("ew") Wrapper<TuizuxinxiEntity> wrapper);

	List<TuizuxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<TuizuxinxiEntity> wrapper);
	
	TuizuxinxiView selectView(@Param("ew") Wrapper<TuizuxinxiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<TuizuxinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<TuizuxinxiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<TuizuxinxiEntity> wrapper);



}
