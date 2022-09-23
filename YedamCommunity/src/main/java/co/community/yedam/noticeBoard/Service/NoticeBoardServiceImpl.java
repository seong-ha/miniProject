package co.community.yedam.noticeBoard.Service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class NoticeBoardServiceImpl implements NoticeBoardService {

	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private NoticeBoardMapper map = sqlSession.getMapper(NoticeBoardMapper.class);

	@Override
	public List<NoticeBoardVO> NoticeBoardSelectList() {
		// TODO Auto-generated method stub
		return map.NoticeBoardSelectList();
	}

	@Override
	public NoticeBoardVO NoticeBoardSelect(NoticeBoardVO vo) {
		// TODO Auto-generated method stub
		return map.NoticeBoardSelect(vo);
	}

	@Override
	public int noticeBoardInsert(NoticeBoardVO vo) {
		// TODO Auto-generated method stub
		return map.noticeBoardInsert(vo);
	}

	@Override
	public int noticeBoardUpdate(NoticeBoardVO vo) {
		// TODO Auto-generated method stub
		return map.noticeBoardUpdate(vo);
	}

	@Override
	public int noticeBoardDelete(NoticeBoardVO vo) {
		// TODO Auto-generated method stub
		return map.noticeBoardDelete(vo);
	}

	@Override
	public boolean isMemberId(String id) {
		// TODO Auto-generated method stub
		return map.isMemberId(id);
	}
}
