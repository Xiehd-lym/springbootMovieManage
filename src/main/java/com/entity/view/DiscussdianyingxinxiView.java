package com.entity.view;

import com.entity.DiscussdianyingxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 电影信息评论表
 * @author 
 * @email 
 * @date 2023-05-13
 */
@TableName("discussdianyingxinxi")
public class DiscussdianyingxinxiView  extends DiscussdianyingxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussdianyingxinxiView(){
	}
 
 	public DiscussdianyingxinxiView(DiscussdianyingxinxiEntity discussdianyingxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discussdianyingxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
