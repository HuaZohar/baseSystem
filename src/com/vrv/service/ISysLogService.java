package com.vrv.service;

import com.baomidou.mybatisplus.service.IService;
import com.vrv.commons.result.PageInfo;
import com.vrv.model.SysLog;

/**
 *
 * SysLog 表数据服务层接口
 *
 */
public interface ISysLogService extends IService<SysLog> {

    void selectDataGrid(PageInfo pageInfo);

}