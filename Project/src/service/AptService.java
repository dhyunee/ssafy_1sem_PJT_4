package service;

import java.util.List;

import dto.AptDto;
import dto.AptInfoDto;

public interface AptService {
	
	List<AptDto> aptList(int limit, int offset);
	List<AptDto> aptListSearchWord(int limit, int offset, String searchWord);
	
	int aptListTotalCnt();
	int aptListSearchWordTotalCnt(String searchWord);
	
	AptInfoDto aptinfo(int aptNo);
	
}