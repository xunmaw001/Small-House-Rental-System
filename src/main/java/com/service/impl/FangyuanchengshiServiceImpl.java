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


import com.dao.FangyuanchengshiDao;
import com.entity.FangyuanchengshiEntity;
import com.service.FangyuanchengshiService;
import com.entity.vo.FangyuanchengshiVO;
import com.entity.view.FangyuanchengshiView;

@Service("fangyuanchengshiService")
public class FangyuanchengshiServiceImpl extends ServiceImpl<FangyuanchengshiDao, FangyuanchengshiEntity> implements FangyuanchengshiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FangyuanchengshiEntity> page = this.selectPage(
                new Query<FangyuanchengshiEntity>(params).getPage(),
                new EntityWrapper<FangyuanchengshiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FangyuanchengshiEntity> wrapper) {
		  Page<FangyuanchengshiView> page =new Query<FangyuanchengshiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FangyuanchengshiVO> selectListVO(Wrapper<FangyuanchengshiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FangyuanchengshiVO selectVO(Wrapper<FangyuanchengshiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FangyuanchengshiView> selectListView(Wrapper<FangyuanchengshiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FangyuanchengshiView selectView(Wrapper<FangyuanchengshiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
