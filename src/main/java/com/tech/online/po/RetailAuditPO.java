package com.tech.online.po;

import java.util.Date;

public interface RetailAuditPO {
	public abstract void setCreationDtm(Date creationDtm);

	public abstract void setUpdationDtm(Date updationDtm);

	public abstract Date getUpdationDtm();

	public abstract Date getCreationDtm();

	public String getUpdatedBy();

	public void setUpdatedBy(String updatedBy);

	
}
