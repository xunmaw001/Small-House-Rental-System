package com.dao;

import com.entity.DiscussfangyuanxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussfangyuanxinxiVO;
import com.entity.view.DiscussfangyuanxinxiView;


/**
 * 房源信息评论表
 * 
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
public interface DiscussfangyuanxinxiDao extends BaseMapper<DiscussfangyuanxinxiEntity> {
	
	List<DiscussfangyuanxinxiVO> selectListVO(@Param("ew") Wrapper<DiscussfangyuanxinxiEntity> wrapper);
	
	DiscussfangyuanxinxiVO selectVO(@Param("ew") Wrapper<DiscussfangyuanxinxiEntity> wrapper);
	
	List<DiscussfangyuanxinxiView> selectListView(@Param("ew") Wrapper<DiscussfangyuanxinxiEntity> wrapper);

	List<DiscussfangyuanxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussfangyuanxinxiEntity> wrapper);
	
	DiscussfangyuanxinxiView selectView(@Param("ew") Wrapper<DiscussfangyuanxinxiEntity> wrapper);
	

}
