package service;

import java.util.List;

import dao.AptDao;
import dao.AptDaoImpl;
import dto.AptDto;
import dto.AptInfoDto;

public class AptServiceImpl implements AptService{
	
	// Singleton
	private static AptServiceImpl instance = new AptServiceImpl();
	private AptServiceImpl() {}
	public static AptServiceImpl getInstance() {
		return instance;
	}
	
	AptDao dao = AptDaoImpl.getInstance();
	
	@Override
	public List<AptDto> aptList(int limit, int offset) {
		return dao.aptList(limit, offset);
	}
	@Override
	public List<AptDto> aptListSearchWord(int limit, int offset, String searchWord) {
		return dao.aptListSearchWord(limit, offset, searchWord);
	}
	@Override
	public int aptListTotalCnt() {
		return dao.aptListTotalCnt();
	}
	@Override
	public int aptListSearchWordTotalCnt(String searchWord) {
		return dao.aptListSearchWordTotalCnt(searchWord);
	}
	@Override
	public AptInfoDto aptinfo(int aptNo) {
		return dao.aptinfo(aptNo);
	}

}