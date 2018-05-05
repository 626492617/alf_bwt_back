package com.alf.highest.personal.service;

import com.alf.highest.site.pojo.BwtPersonal;

public interface PersonalInformationService {
	/**
	 * 查看个人资料
	 * @param personalid
	 * @return
	 */
	public BwtPersonal selectByPersonalidUpdatap(Integer personalid);
	/**
	 * 修改个人资料
	 * @param bwtPersonal
	 * @return
	 */
	public void updataByPersonalId(BwtPersonal  bwtPersonal );
}
