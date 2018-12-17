package com.tech.online.poimpl;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import com.tech.online.po.RetailAuditPO;

@Embeddable
public class RetailAuditPOImpl implements RetailAuditPO {
	@Column(name="creation_dtm")
	private Date creationDtm;
	
	@Column(name="updation_dtm")
	private Date updationDtm;
	
	@Column(name="updated_by")
	private String updatedBy;	
	
	
	

	@Override
	public Date getCreationDtm() {
		return creationDtm;
	}

	@Override
	public void setCreationDtm(Date creationDtm) {
		this.creationDtm = creationDtm;
	}

	@Override
	public Date getUpdationDtm() {
		return updationDtm;
	}

	@Override
	public void setUpdationDtm(Date updationDtm) {
		this.updationDtm = updationDtm;
	}

	@Override
	public String getUpdatedBy() {
		return updatedBy;

	}

	@Override
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}

	

	

}
