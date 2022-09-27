package co.community.yedam.foodInfo.service;

import java.util.List;

public interface foodInfoMapper {
	
	List<foodInfoVO> foodInfoSelectList();
	foodInfoVO foodInfoSelect(foodInfoVO vo);
	int foodInfoInsert(foodInfoVO vo);
	int foodInfoUpdate(foodInfoVO vo);
	int foodInfoDelete(foodInfoVO vo);

}
