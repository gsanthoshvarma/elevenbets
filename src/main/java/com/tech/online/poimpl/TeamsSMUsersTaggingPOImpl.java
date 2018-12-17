package com.tech.online.poimpl;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Sambaiah
 *
 */
@Entity
@Table(name="tb_mst_smusers_tagging")
public class TeamsSMUsersTaggingPOImpl {
	public TeamsSMUsersTaggingPOImpl() {
		super();
	}
    @Id
	private long id;
    
    @Column(name="team_id")
	private String teamId;    
    
    
    @Column(name="is_active")
	private int isActive;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTeamId() {
		return teamId;
	}

	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}


	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
    
	
}
