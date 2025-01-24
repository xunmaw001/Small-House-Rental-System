package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YudingfangziDao;
import com.entity.YudingfangziEntity;
import com.service.YudingfangziService;
import com.entity.vo.YudingfangziVO;
import com.entity.view.YudingfangziView;

@Service("yudingfangziService")
public class YudingfangziServiceImpl extends ServiceImpl<YudingfangziDao, YudingfangziEntity> implements YudingfangziService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YudingfangziEntity> page = this.selectPage(
                new Query<YudingfangziEntity>(params).getPage(),
                new EntityWrapper<YudingfangziEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YudingfangziEntity> wrapper) {
		  Page<YudingfangziView> page =new Query<YudingfangziView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YudingfangziVO> selectListVO(Wrapper<YudingfangziEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YudingfangziVO selectVO(Wrapper<YudingfangziEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YudingfangziView> selectListView(Wrapper<YudingfangziEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YudingfangziView selectView(Wrapper<YudingfangziEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
