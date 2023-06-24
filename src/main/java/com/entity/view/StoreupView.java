package com.entity.view;

import com.entity.StoreupEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 收藏表
 * @author 
 * @email 
 * @date 2023-05-13
 */
@TableName("storeup")
public class StoreupView  extends StoreupEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public StoreupView(){
	}
 
 	public StoreupView(StoreupEntity storeupEntity){
 	try {
			BeanUtils.copyProperties(this, storeupEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
