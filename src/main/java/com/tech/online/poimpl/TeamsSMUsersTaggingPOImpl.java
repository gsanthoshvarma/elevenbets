package com.tech.online.poimpl;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
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
    @SequenceGenerator(name="seq",sequenceName="tb_mst_smusers_tagging_seq_id")        
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="seq") 
	private long id;
    
    @Column(name="team_id")
	private String teamId;    
    
    
    @Column(name="is_active")
	private int isActive;
    
    @Column(name="username")
    private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

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
