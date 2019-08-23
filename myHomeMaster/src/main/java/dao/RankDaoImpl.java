package dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Rank;

@Repository
public class RankDaoImpl implements RankDao {
	@Autowired
	private SqlSession session;
	
	public List<Rank> rankingList() {
		
		return session.selectList("mappers.myMapper.selectRanking");
	}

}
