package board.dao;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;

public interface BoardDAO {

	public void boardWrite(Map<String, String> map);

	public int getTotalA();

	public int getTotalA(Map<String, String> map);

	public List<BoardDTO> boardNotice(int startNum, int endNum);

	public List<BoardDTO> boardSearch(Map<String, String> map);

	public void addHit(int seq);

	public BoardDTO boardView(int seq);

	public void boardDelete(int seq);

	public void boardReply(Map<String, String> map);

	public void boardSelectDelete(String[] checkSeq);

	public void boardModify(Map<String, String> map);

	public List<BoardDTO> boardNoticeQna(int startNum, int endNum, String id);

	public int getTotalQnaA(String id);

	public int getTotalQnaA(Map<String, String> map);

	public void boardQnaWrite(Map<String, String> map);

	public BoardDTO boardQnaView(int seq);

	public void boardQnaModify(Map<String, String> map);

	public void boardDeleteQna(int seq);

	public void boardReplyQna(Map<String, String> map);

	public List<BoardDTO> boardQnaSearch(Map<String, String> map);

	

	

	

	

	


}
