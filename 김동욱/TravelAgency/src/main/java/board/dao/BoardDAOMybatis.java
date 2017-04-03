package board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import board.bean.BoardDTO;

@Component("boardDAO")
@Transactional
public class BoardDAOMybatis implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;

	public void boardWrite(Map<String, String> map) {
		sqlSession.insert("boardSQL.boardWrite", map);		
	}

	public int getTotalA() {
		int totalA = sqlSession.selectOne("boardSQL.getTotalA");
		
		return totalA;
	}

	public int getTotalA(Map<String, String> map) {
		int totalA = sqlSession.selectOne("boardSQL.getSearchTotalA", map);
		return totalA;
	}

	public List<BoardDTO> boardNotice(int startNum, int endNum) {
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		
		List<BoardDTO> list = sqlSession.selectList("boardSQL.boardNotice",map);
		
		return list;
	}

	public List<BoardDTO> boardSearch(Map<String, String> map) {
		
		List<BoardDTO> list = sqlSession.selectList("boardSQL.boardSearch", map);
		
		return list;
	}

	public void addHit(int seq) {
		sqlSession.update("boardSQL.addHit",seq);		
	}

	public BoardDTO boardView(int seq) {
		BoardDTO boardDTO = sqlSession.selectOne("boardSQL.boardView", seq);
		return boardDTO;
	}

	public void boardDelete(int seq) {
		sqlSession.delete("boardSQL.boardDelete", seq);
		
	}

	public void boardReply(Map<String, String> map) {
		//원글
		BoardDTO boardDTO = boardView(Integer.parseInt(map.get("pseq")));
		
		//insert
		map.put("ref", boardDTO.getRef()+""); //원글ref
		map.put("lev", boardDTO.getLev()+1+"");	//원글lev+1
		map.put("step", boardDTO.getStep()+1+"");	//원글step+1
		
		Map<String,Object> map2 = new HashMap<String,Object>();
		map2.put("boardDTO", boardDTO);
		map2.put("map", map);
		
		sqlSession.insert("boardSQL.boardReply", map2);
	}

	public void boardSelectDelete(String[] checkSeq) {
		for(int i=0; i<checkSeq.length; i++){
			sqlSession.delete("boardSQL.boardDelete", Integer.parseInt(checkSeq[i]));	
		}		
	}

	public void boardModify(Map<String, String> map) {
		sqlSession.update("boardSQL.boardModify", map);
		
	}
	//위쪽은 공지사항관련
	//=============================================================
	
	//=============================================================
	//아래쪽은 QnA관련
	public List<BoardDTO> boardNoticeQna(int startNum, int endNum, String id) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("id", id);
		
		List<BoardDTO> list = sqlSession.selectList("boardSQL.boardNoticeQna", map);
		
		return list;
	}

	public int getTotalQnaA(String id) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("id", id);
		System.out.println("id="+id);
		int totalQnaA = sqlSession.selectOne("boardSQL.getTotalQnaA", map);
		System.out.println(totalQnaA);
		return totalQnaA;
	}

	public int getTotalQnaA(Map<String, String> map) {
		int totalA = sqlSession.selectOne("boardSQL.getSearchTotalQnaA", map);
		return totalA;
	}

	public void boardQnaWrite(Map<String, String> map) {
		sqlSession.insert("boardSQL.boardQnaWrite", map);
		
	}

	public BoardDTO boardQnaView(int seq) {
		BoardDTO boardDTO = sqlSession.selectOne("boardSQL.boardQnaView", seq);
		return boardDTO;
	}

	public void boardQnaModify(Map<String, String> map) {
		sqlSession.update("boardSQL.boardQnaModify", map);
		
	}

	public void boardDeleteQna(int seq) {
		sqlSession.delete("boardSQL.boardDeleteQna", seq);		
	}

	public void boardReplyQna(Map<String, String> map) {
		//원글
		BoardDTO boardDTO = boardQnaView(Integer.parseInt(map.get("pseq")));
		
		//insert
		map.put("ref", boardDTO.getRef()+""); //원글ref
		map.put("lev", boardDTO.getLev()+1+"");	//원글lev+1
		map.put("step", boardDTO.getStep()+1+"");	//원글step+1
		map.put("category", boardDTO.getCategory());
		
		Map<String,Object> map2 = new HashMap<String,Object>();
		map2.put("boardDTO", boardDTO);
		map2.put("map", map);
		
		sqlSession.insert("boardSQL.boardReplyQna", map2);
		
	}

	public List<BoardDTO> boardQnaSearch(Map<String, String> map) {
		List<BoardDTO> list = sqlSession.selectList("boardSQL.boardQnaSearch", map);
		
		return list;
	}

	
	
	

	
	
	

	
}
