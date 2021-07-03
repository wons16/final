package com.simpson.kisen.member.model.dao;

import java.util.List;
import java.util.Map;

import com.simpson.kisen.agency.model.vo.Agency;
import com.simpson.kisen.fan.model.vo.Authority;
import com.simpson.kisen.fan.model.vo.Fan;

public interface MemberDao {

	Fan selectOneMember(String id);

	int insertMember(Fan member);

	int insertAgency(Agency agency);

	int insertAgencyMember(Fan member);

	int insertMemberAuthority(Fan member);

	int insertOauthMember(Fan member);

	List<Authority> selectOneAuthority(String fanId);

	int insertOauthAgencyMember(Fan member);

	int insertAgencyAuthority(Fan member);

	Fan searchOneMember(Map<String, Object> param);

	Fan selectOneMemberByEmail(String email);

	Fan selectOneMemberByPhone(Fan fan);

	int updatePwdToTempPwd(Fan member);

	Fan selectOneMemberByPhoneGet(Map<String, Object> param);

}