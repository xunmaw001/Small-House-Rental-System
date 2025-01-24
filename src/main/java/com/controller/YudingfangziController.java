package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.YudingfangziEntity;
import com.entity.view.YudingfangziView;

import com.service.YudingfangziService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 预定房子
 * 后端接口
 * @author 
 * @email 
 * @date 2023-04-14 07:11:46
 */
@RestController
@RequestMapping("/yudingfangzi")
public class YudingfangziController {
    @Autowired
    private YudingfangziService yudingfangziService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YudingfangziEntity yudingfangzi, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("fangdong")) {
			yudingfangzi.setFangdongzhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("zuhu")) {
			yudingfangzi.setZuhuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YudingfangziEntity> ew = new EntityWrapper<YudingfangziEntity>();

    	PageUtils page = yudingfangziService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yudingfangzi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YudingfangziEntity yudingfangzi, 
		HttpServletRequest request){
        EntityWrapper<YudingfangziEntity> ew = new EntityWrapper<YudingfangziEntity>();

    	PageUtils page = yudingfangziService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yudingfangzi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YudingfangziEntity yudingfangzi){
       	EntityWrapper<YudingfangziEntity> ew = new EntityWrapper<YudingfangziEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yudingfangzi, "yudingfangzi")); 
        return R.ok().put("data", yudingfangziService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YudingfangziEntity yudingfangzi){
        EntityWrapper< YudingfangziEntity> ew = new EntityWrapper< YudingfangziEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yudingfangzi, "yudingfangzi")); 
		YudingfangziView yudingfangziView =  yudingfangziService.selectView(ew);
		return R.ok("查询预定房子成功").put("data", yudingfangziView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        YudingfangziEntity yudingfangzi = yudingfangziService.selectById(id);
        return R.ok().put("data", yudingfangzi);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        YudingfangziEntity yudingfangzi = yudingfangziService.selectById(id);
        return R.ok().put("data", yudingfangzi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YudingfangziEntity yudingfangzi, HttpServletRequest request){
    	yudingfangzi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yudingfangzi);

        yudingfangziService.insert(yudingfangzi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YudingfangziEntity yudingfangzi, HttpServletRequest request){
    	yudingfangzi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yudingfangzi);

        yudingfangziService.insert(yudingfangzi);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody YudingfangziEntity yudingfangzi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yudingfangzi);
        yudingfangziService.updateById(yudingfangzi);//全部更新
        return R.ok();
    }

    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yudingfangziService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<YudingfangziEntity> wrapper = new EntityWrapper<YudingfangziEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("fangdong")) {
			wrapper.eq("fangdongzhanghao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("zuhu")) {
			wrapper.eq("zuhuzhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = yudingfangziService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	








}
