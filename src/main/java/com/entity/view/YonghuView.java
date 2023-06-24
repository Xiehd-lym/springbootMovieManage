package com.entity.view;

import com.entity.YonghuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 用户
 *
 * @author 
 * @email 
 * @date 2023-05-13
 */
@TableName("yonghu")
public class YonghuView  extends YonghuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YonghuView(){
	}
 
 	public YonghuView(YonghuEntity yonghuEntity){
 	try {
			BeanUtils.copyProperties(this, yonghuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
