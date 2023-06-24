package com.entity.view;

import com.entity.AddressEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 地址
 * @author 
 * @email 
 * @date 2023-05-13
 */
@TableName("address")
public class AddressView  extends AddressEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public AddressView(){
	}
 
 	public AddressView(AddressEntity addressEntity){
 	try {
			BeanUtils.copyProperties(this, addressEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
