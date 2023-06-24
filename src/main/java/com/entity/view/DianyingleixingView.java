package com.entity.view;

import com.entity.DianyingleixingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 电影类型
 * @author 
 * @email 
 * @date 2023-05-13
 */
@TableName("dianyingleixing")
public class DianyingleixingView  extends DianyingleixingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DianyingleixingView(){
	}
 
 	public DianyingleixingView(DianyingleixingEntity dianyingleixingEntity){
 	try {
			BeanUtils.copyProperties(this, dianyingleixingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
