package com.entity.view;

import com.entity.GoupiaotongjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 购票统计
 * @author 
 * @email 
 * @date 2023-05-13
 */
@TableName("goupiaotongji")
public class GoupiaotongjiView  extends GoupiaotongjiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public GoupiaotongjiView(){
	}
 
 	public GoupiaotongjiView(GoupiaotongjiEntity goupiaotongjiEntity){
 	try {
			BeanUtils.copyProperties(this, goupiaotongjiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
