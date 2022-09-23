package co.community.yedam.freeBoard.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class FreeBoardServiceImpl implements FreeBoardService {

	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private FreeBoardMapper map = sqlSession.getMapper(FreeBoardMapper.class);

	@Override
	public List<FreeBoardVO> freeBoardSelectlist() {
		return map.freeBoardSelectlist();
	}

	@Override
	public FreeBoardVO freeBoardSelect(FreeBoardVO vo) {
		return map.freeBoardSelect(vo);
	}

	@Override
	public int freeBoardInsert(FreeBoardVO vo) {
		return map.freeBoardInsert(vo);
	}

	@Override
	public int freeBoardDelete(FreeBoardVO vo) {
		return map.freeBoardDelete(vo);
	}

	@Override
	public int freeBoardUpdate(FreeBoardVO vo) {
		return map.freeBoardUpdate(vo);
	}

}
