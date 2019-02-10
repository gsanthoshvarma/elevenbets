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
@Table(name="smusers_betting_histroy")
public class SMUsersBettingHistoryPOImpl {
	public SMUsersBettingHistoryPOImpl() {
		super();
	}
    @Id
	private long match_no;
    
    @Column(name="match_number")
	private String matchNumber;
    
    @Column(name="bet")
	private String bet;    
    
	public String getMatchNumber() {
		return matchNumber;
	}

	public void setMatchNumber(String matchNumber) {
		this.matchNumber = matchNumber;
	}
	@Column(name="username")
	private String userName;
    
    @Column(name="match")
	private String match;
    
    @Column(name="match_date")
    private String matchDate;
    
    @Column(name="win_value")
	private int winValue;
    
    public long getMatch_no() {
		return match_no;
	}

	public void setMatch_no(long match_no) {
		this.match_no = match_no;
	}

	public String getBet() {
		return bet;
	}

	public void setBet(String bet) {
		this.bet = bet;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMatch() {
		return match;
	}

	public void setMatch(String match) {
		this.match = match;
	}

	public String getMatchDate() {
		return matchDate;
	}

	public void setMatchDate(String matchDate) {
		this.matchDate = matchDate;
	}

	public int getWinValue() {
		return winValue;
	}

	public void setWinValue(int winValue) {
		this.winValue = winValue;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	@Column(name="status")
    private String status;
    
	
	
}



