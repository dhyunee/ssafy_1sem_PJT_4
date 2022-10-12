package controller.datagokr;

public class HouseDeal {
	// xml item 한개가 거래 한개에 해당
	// item 항목 전체 중에 필요한 항목만 SAX를 이용해서 걸러낸다.
	
	// 법정동읍면코드
	private int code;
	// 법정동
	private String dong;
	// 도로명
	private String roadName;
	// 아파트 이름
	private String aptName;
	// 전용 면적
	private String size;
	// 거래 금액
	private String dealAmount;
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getRoadName() {
		return roadName;
	}
	public void setRoadName(String roadName) {
		this.roadName = roadName;
	}
	public String getAptName() {
		return aptName;
	}
	public void setAptName(String aptName) {
		this.aptName = aptName;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getDealAmount() {
		return dealAmount;
	}
	public void setDealAmount(String dealAmount) {
		this.dealAmount = dealAmount;
	}
	
	@Override
	public String toString() {
		return "HouseDeal [code=" + code + ", dong=" + dong + ", roadName=" + roadName + ", aptName=" + aptName
				+ ", size=" + size + ", dealAmount=" + dealAmount + "]";
	}


}
