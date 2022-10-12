package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.AptDto;
import dto.AptInfoDto;
import util.DBManager;

public class AptDaoImpl implements AptDao{
	
	// Singleton
	private static AptDaoImpl instance = new AptDaoImpl();
	private AptDaoImpl() {}
	public static AptDaoImpl getInstance() {
		return instance;
	}
	
	
	@Override
	public List<AptDto> aptList(int limit, int offset) {
		
		List<AptDto> list = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			sb.append(" select * ")
				.append(" from housedeal ")
				.append(" limit ? offset ? ");
			
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setInt(1, limit);
			pstmt.setInt(2, offset);

			rs = pstmt.executeQuery(); 
			while(rs.next()) {
				AptDto aptDto = new AptDto();
				aptDto.setAptNo(rs.getInt("no"));
				aptDto.setAptName(rs.getString("aptName"));
				aptDto.setDong(rs.getString("dong"));
				aptDto.setCode(rs.getString("code"));
				aptDto.setDealAmount(rs.getString("dealAmount"));
				aptDto.setBuildYear(rs.getString("buildYear"));
				aptDto.setDealYear(rs.getString("dealYear"));
				aptDto.setDealMonth(rs.getString("dealMonth"));
				aptDto.setDealDay(rs.getString("dealDay"));
				aptDto.setArea(rs.getString("area"));
				aptDto.setFloor(rs.getString("floor"));
				aptDto.setJibun(rs.getString("jibun"));
				aptDto.setType(rs.getString("type"));
				aptDto.setHouse_no(rs.getInt("house_no"));
				list.add(aptDto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return list;
	}
	
	
	
	@Override
	public List<AptDto> aptListSearchWord(int limit, int offset, String searchWord) {
		
		List<AptDto> list = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		System.out.println("아니 여기는 나온다 이말이야 "+ searchWord);

		try {
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			sb.append(" select * ")
				.append(" from housedeal ")
				.append(" where dong like ? ")
				.append(" limit ? offset ? ");
			
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, "%" + searchWord + "%"); 
			pstmt.setInt(2, limit); 
			pstmt.setInt(3, offset);

			rs = pstmt.executeQuery(); // ������� row �� return
			while(rs.next()) {
				AptDto aptDto = new AptDto();
				aptDto.setAptNo(rs.getInt("no"));
				aptDto.setAptName(rs.getString("aptName"));
				aptDto.setDong(rs.getString("dong"));
				aptDto.setCode(rs.getString("code"));
				aptDto.setDealAmount(rs.getString("dealAmount"));
				aptDto.setBuildYear(rs.getString("buildYear"));
				aptDto.setDealYear(rs.getString("dealYear"));
				aptDto.setDealMonth(rs.getString("dealMonth"));
				aptDto.setDealDay(rs.getString("dealDay"));
				aptDto.setArea(rs.getString("area"));
				aptDto.setFloor(rs.getString("floor"));
				aptDto.setJibun(rs.getString("jibun"));
				aptDto.setType(rs.getString("type"));
				aptDto.setHouse_no(rs.getInt("house_no"));
				list.add(aptDto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return list;
	}
	
	
	
	@Override
	public int aptListTotalCnt() {
		int totalCnt = -1;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			
			sb.append(" select count(*) from housedeal");
			pstmt = con.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				totalCnt = rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return totalCnt;
	}
	
	
	
	@Override
	public int aptListSearchWordTotalCnt(String searchWord) {
		int totalCnt = -1;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			
			sb.append(" select count(*) from housedeal where dong like ? ");
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, "%" + searchWord + "%");
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				totalCnt = rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return totalCnt;
	}
	@Override
	public AptInfoDto aptinfo(int aptNo) {
		AptInfoDto aptInfoDto = new AptInfoDto();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sido_code = "1", gu_code = "1";
		String city="", gu="", dong="", jibun="";
		
		try {
			con = DBManager.getConnection();
			StringBuilder sb = new StringBuilder();
			sb.append(" select * ")
				.append(" from housedeal ")
				.append(" where no = ? ");
			
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setInt(1, aptNo);

			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				aptInfoDto.setAptNo(rs.getInt("no"));
				aptInfoDto.setAptName(rs.getString("aptName"));
				aptInfoDto.setDealAmount(rs.getString("dealAmount"));
				aptInfoDto.setBuildYear(rs.getString("buildYear"));
				aptInfoDto.setHouseDealDate(rs.getString("dealYear")+"."+rs.getString("dealMonth")+"."+rs.getString("dealDay"));
				aptInfoDto.setArea(rs.getString("area"));
				aptInfoDto.setFloor(rs.getString("floor"));
				aptInfoDto.setType(rs.getString("type"));
				aptInfoDto.setHouse_no(rs.getInt("house_no"));
				
				gu_code = rs.getString("code");
				dong = rs.getString("dong");
				jibun = rs.getString("jibun");
			}
			
			sb = new StringBuilder();
			sb.append(" select * ")
			.append(" from gugun_code ")
			.append(" where code = ? ");
			
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, gu_code);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				gu = rs.getString("name");
				sido_code = rs.getString("sido_code");
			}
			
			sb = new StringBuilder();
			sb.append(" select * ")
			.append(" from dong_code ")
			.append(" where city_code = ? ");
			
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, sido_code);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				city = rs.getString("city_name");
			}
			
			aptInfoDto.setHouseAddress(city+" "+gu+" "+dong+ " "+jibun);
			
			sb = new StringBuilder();
			sb.append(" select lat, lng ")
			.append(" from houseinfo ")
			.append(" where AptName like ? ");
			
			pstmt = con.prepareStatement(sb.toString());
			pstmt.setString(1, aptInfoDto.getAptName());

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				aptInfoDto.setLat(rs.getString("lat"));
				aptInfoDto.setLng(rs.getString("lng"));
			}
			
			System.out.println(aptInfoDto.getLat()+ "  " + aptInfoDto.getLng());
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.releaseConnection(rs, pstmt, con);
		}
		
		return aptInfoDto;
	}


}
