package kr.co.mirak.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberServiceImpl implements MemberService {

	private SqlSessionTemplate sqlSessionTemplate;

	public MemberServiceImpl() {}
	
	public MemberServiceImpl(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}	
	
	public MemberVO login(MemberVO vo) {
		MemberMapper mapper = sqlSessionTemplate.getMapper(MemberMapper.class);
		return vo;
	}
	public List<MemberVO> list() {

		MemberMapper mapper = sqlSessionTemplate.getMapper(MemberMapper.class);
		List<MemberVO> list = mapper.list();

		return list;
	}

	public MemberVO info(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insert(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int update(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
