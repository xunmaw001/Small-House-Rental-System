package com.dao;

import com.entity.FangdongEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FangdongVO;
import com.entity.view.FangdongView;


/**
 * 房东
 * 
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
public interface FangdongDao extends BaseMapper<FangdongEntity> {
	
	List<FangdongVO> selectListVO(@Param("ew") Wrapper<FangdongEntity> wrapper);
	
	FangdongVO selectVO(@Param("ew") Wrapper<FangdongEntity> wrapper);
	
	List<FangdongView> selectListView(@Param("ew") Wrapper<FangdongEntity> wrapper);

	List<FangdongView> selectListView(Pagination page,@Param("ew") Wrapper<FangdongEntity> wrapper);
	
	FangdongView selectView(@Param("ew") Wrapper<FangdongEntity> wrapper);
	

}
