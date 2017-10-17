package com.vrv.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.vrv.commons.utils.JsonUtils;

/**
 *
 * 用户角色
 *
 */
@TableName("user_role")
public class UserRole implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 主键id */
	@TableId(type = IdType.AUTO)
	private Long id;

	/** 用户id */
	@TableField(value = "user_id")
	private Long userId;

	/** 角色id */
	@TableField(value = "role_id")
	private Long roleId;


	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	@Override
	public String toString() {
		return JsonUtils.toJson(this);
	}
}
