package com.dao;

import com.entity.YudingfangziEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YudingfangziVO;
import com.entity.view.YudingfangziView;


/**
 * 预定房子
 * 
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
public interface YudingfangziDao extends BaseMapper<YudingfangziEntity> {
	
	List<YudingfangziVO> selectListVO(@Param("ew") Wrapper<YudingfangziEntity> wrapper);
	
	YudingfangziVO selectVO(@Param("ew") Wrapper<YudingfangziEntity> wrapper);
	
	List<YudingfangziView> selectListView(@Param("ew") Wrapper<YudingfangziEntity> wrapper);

	List<YudingfangziView> selectListView(Pagination page,@Param("ew") Wrapper<YudingfangziEntity> wrapper);
	
	YudingfangziView selectView(@Param("ew") Wrapper<YudingfangziEntity> wrapper);
	

}
