package com.entity.view;

import com.entity.NewsEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 电影资讯
 * @author 
 * @email 
 * @date 2023-05-13
 */
@TableName("news")
public class NewsView  extends NewsEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public NewsView(){
	}
 
 	public NewsView(NewsEntity newsEntity){
 	try {
			BeanUtils.copyProperties(this, newsEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
