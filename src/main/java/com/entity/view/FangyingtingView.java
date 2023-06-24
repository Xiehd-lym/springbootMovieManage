package com.entity.view;

import com.entity.FangyingtingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 放映厅
 * @author 
 * @email 
 * @date 2023-05-13
 */
@TableName("fangyingting")
public class FangyingtingView  extends FangyingtingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public FangyingtingView(){
	}
 
 	public FangyingtingView(FangyingtingEntity fangyingtingEntity){
 	try {
			BeanUtils.copyProperties(this, fangyingtingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
