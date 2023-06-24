package com.entity.view;

import com.entity.DianyingxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 电影信息
 * @author 
 * @email 
 * @date 2023-05-13
 */
@TableName("dianyingxinxi")
public class DianyingxinxiView  extends DianyingxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DianyingxinxiView(){
	}
 
 	public DianyingxinxiView(DianyingxinxiEntity dianyingxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, dianyingxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
