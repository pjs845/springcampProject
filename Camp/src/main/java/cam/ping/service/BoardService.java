package cam.ping.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import cam.ping.domain.Board;
import cam.ping.domain.Comment;

public interface BoardService {
	List<Board> listallS();
	Board selectS(long seq);
	void insertS(Board board);
	void deleteS(long seq);
	void updateS(Board board);
	void comment_updateS(long seq, Comment comment, int count);
	List<Board> searchListS(String catgo, String keyword);
	List<Board> searchAllS(String keyword);
	List<Comment> CommentListS(long seq);
	List<Board> CommentSearchS(String keyword);
}
