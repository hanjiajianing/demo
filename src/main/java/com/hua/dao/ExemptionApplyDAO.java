package com.hua.dao;

import com.hua.entity.ExemptionApply;

import java.util.List;

public interface ExemptionApplyDAO {
	
	public List<ExemptionApply> getAll();
	
	public ExemptionApply get(String studentId);
	
	public void insert(ExemptionApply exemptionApply);
	
	public void update(ExemptionApply exemptionApply);
	
	public void delete(String studentId);
}
