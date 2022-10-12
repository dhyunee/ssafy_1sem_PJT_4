package dao;

import java.util.List;

import dto.AptDto;
import dto.AptInfoDto;

public interface AptDao {
	
	List<AptDto> aptList(int limit, int offset);
	List<AptDto> aptListSearchWord(int limit, int offset, String searchWord);
	
	int aptListTotalCnt();
	int aptListSearchWordTotalCnt(String searchWord);
	
	AptInfoDto aptinfo(int aptNo);
}
