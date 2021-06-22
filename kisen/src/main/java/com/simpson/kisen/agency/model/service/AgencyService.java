package com.simpson.kisen.agency.model.service;

import java.util.List;
import java.util.Map;

import com.simpson.kisen.agency.model.vo.Agency;
import com.simpson.kisen.idol.model.vo.Idol;

public interface AgencyService {

	List<Idol> selectIdolList(String fanNo, Map<String, Object> param);

	int insertIdol(Idol idol);

	Idol selectOneIdol(String idolName);

	Agency selectAgency(String fanNo);

	int selectIdolTotalContents(String fanNo);

	Idol selectIdol(int no);

	int selectPdCnt(int no);

	int updateIdol(Idol idol);

}
