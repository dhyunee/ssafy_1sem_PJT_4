package dto;

import java.util.Date;

public class UserDto {
    private int userSeq;
    private String userName;
    private String userPassword;
    private String userEmail;
    private String userProfileImageUrl;
    private Date userRegisterDate;
    private String userState;
    private String userEventPart;
	public int getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(int userSeq) {
		this.userSeq = userSeq;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserProfileImageUrl() {
		return userProfileImageUrl;
	}
	public void setUserProfileImageUrl(String userProfileImageUrl) {
		this.userProfileImageUrl = userProfileImageUrl;
	}
	public Date getUserRegisterDate() {
		return userRegisterDate;
	}
	public void setUserRegisterDate(Date userRegisterDate) {
		this.userRegisterDate = userRegisterDate;
	}
	public String getUserState() {
		return userState;
	}
	public void setUserState(String userState) {
		this.userState = userState;
	}
	public String getUserEventPart() {
		return userEventPart;
	}
	public void setUserEventPart(String userEventPart) {
		this.userEventPart = userEventPart;
	}
	@Override
	public String toString() {
		return "UserDto [userSeq=" + userSeq + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", userEmail=" + userEmail + ", userProfileImageUrl=" + userProfileImageUrl + ", userRegisterDate="
				+ userRegisterDate + ", userState=" + userState + ", userEventPart=" + userEventPart + "]";
	}
	
    
}