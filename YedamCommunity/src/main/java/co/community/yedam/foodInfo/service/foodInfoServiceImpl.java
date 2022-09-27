package co.community.yedam.foodInfo.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class foodInfoServiceImpl implements foodInfoService {
	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private foodInfoMapper map = sqlSession.getMapper(foodInfoMapper.class);

	@Override
	public List<foodInfoVO> foodInfoSelectList() {
		// TODO Auto-generated method stub
		return map.foodInfoSelectList();
	}

	@Override
	public foodInfoVO foodInfoSelect(foodInfoVO vo) {
		// TODO Auto-generated method stub
		return map.foodInfoSelect(vo);
	}

	@Override
	public int foodInfoInsert(foodInfoVO vo) {
		// TODO Auto-generated method stub
		return map.foodInfoInsert(vo);
	}

	@Override
	public int foodInfoUpdate(foodInfoVO vo) {
		// TODO Auto-generated method stub
		return map.foodInfoUpdate(vo);
	}

	@Override
	public int foodInfoDelete(foodInfoVO vo) {
		// TODO Auto-generated method stub
		return map.foodInfoDelete(vo);
	}

}
