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


import com.dao.TuizuxinxiDao;
import com.entity.TuizuxinxiEntity;
import com.service.TuizuxinxiService;
import com.entity.vo.TuizuxinxiVO;
import com.entity.view.TuizuxinxiView;

@Service("tuizuxinxiService")
public class TuizuxinxiServiceImpl extends ServiceImpl<TuizuxinxiDao, TuizuxinxiEntity> implements TuizuxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TuizuxinxiEntity> page = this.selectPage(
                new Query<TuizuxinxiEntity>(params).getPage(),
                new EntityWrapper<TuizuxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TuizuxinxiEntity> wrapper) {
		  Page<TuizuxinxiView> page =new Query<TuizuxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TuizuxinxiVO> selectListVO(Wrapper<TuizuxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TuizuxinxiVO selectVO(Wrapper<TuizuxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TuizuxinxiView> selectListView(Wrapper<TuizuxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TuizuxinxiView selectView(Wrapper<TuizuxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<TuizuxinxiEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<TuizuxinxiEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<TuizuxinxiEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
