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
@Table(name="vw_match_mst")
public class MatchesListPOImpl {
	public MatchesListPOImpl() {
		super();
	}
    @Id
	private long id;
    
    @Column(name="team_logo1")
	private String teamLogo1;    
    
	@Column(name="team_logo2")
	private String teamLogo2;
    
    @Column(name="match_date")
	private String matchDate;
    
    @Column(name="win")
	private int win;
    
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getTeamLogo1() {
		return teamLogo1;
	}
	public String getTeamLogo2() {
		return teamLogo2;
	}
	public void setTeamLogo2(String teamLogo2) {
		this.teamLogo2 = teamLogo2;
	}
	public void setTeamLogo1(String teamLogo1) {
		this.teamLogo1 = teamLogo1;
	}
	
	
	public String getMatchDate() {
		return matchDate;
	}
	public void setMatchDate(String matchDate) {
		this.matchDate = matchDate;
	}
	public int getWin() {
		return win;
	}
	public void setWin(int win) {
		this.win = win;
	}
	
}
