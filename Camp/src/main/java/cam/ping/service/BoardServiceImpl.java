package cam.ping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import cam.ping.domain.Board;
import cam.ping.domain.Comment;
import cam.ping.mapper.BoardMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper boardMapper;
	
	@Autowired
	private FileService fileService;
	
	@Override
	public List<Board> listallS() {
		return boardMapper.listall();
	}
	
	@Transactional
	@Override
	public Board selectS(long seq) {
		boardMapper.board_viewnum(seq);
		return boardMapper.select(seq);
	}
	
	@Transactional
	@Override
	public void insertS(Board board) {	
		boardMapper.insert(board);
	}

	@Override
	public void deleteS(long seq) {
		boardMapper.delete(seq);
	}

	@Override
	public void updateS(Board board) {
		boardMapper.update(board);
	}
	
	@Transactional
	@Override
	public void comment_updateS(long seq, Comment comment, int count) {
		boardMapper.insertComment(comment);
		boardMapper.comment_update(seq, count);
	}
	@Override
	public List<Board> searchListS(String catgo, String keyword){
		log.info("#catgo4: " + catgo);
		return boardMapper.searchList(catgo, keyword);
	}
	@Override
	public List<Board> searchAllS(String keyword){
		return boardMapper.searchAll(keyword);
	}
	@Override
	public List<Comment> CommentListS(long seq){
		return boardMapper.CommentList(seq);
	}
	@Override
	public List<Board> CommentSearchS(String keyword){
		return boardMapper.CommentSearch(keyword);
	}
}
