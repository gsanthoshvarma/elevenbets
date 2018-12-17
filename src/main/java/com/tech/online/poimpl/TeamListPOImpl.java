package com.tech.online.poimpl;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="team_mst")
public class TeamListPOImpl {
	public TeamListPOImpl() {
		super();
	}
	@Id
	private String team_code;
	
	@Column(name="team_name")
	private String teamName;
	
	@Column(name="is_active")
	private String isActive;
	
	@Column(name="team_logo")
	private String teamLogo;
	
	@Column(name="created_by")
	private String createdBy;

	

	public String getTeam_code() {
		return team_code;
	}

	public void setTeam_code(String team_code) {
		this.team_code = team_code;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String getTeamLogo() {
		return teamLogo;
	}

	public void setTeamLogo(String teamLogo) {
		this.teamLogo = teamLogo;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	
	
}
