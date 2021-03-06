package com.simpson.kisen.fan.model.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import com.simpson.kisen.fan.model.dao.FanDao;
import com.simpson.kisen.fan.model.vo.Fan;

@Service
public class FanServiceImpl implements FanService {
	
	@Autowired
	private FanDao fanDao;

	@Override
	public int updateFan(Fan updateFan) {
		return fanDao.updateFan(updateFan);
	}

	@Override
	public int deleteFan(String fanId) {
		return fanDao.deleteFan(fanId);
	}

	


	
}
