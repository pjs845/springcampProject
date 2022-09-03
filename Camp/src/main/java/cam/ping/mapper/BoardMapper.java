package cam.ping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cam.ping.domain.Board;
import cam.ping.domain.BoardVo;
import cam.ping.domain.Comment;

public interface BoardMapper {
	List<Board> listall();
	Board select(long seq);
	void insert(Board board);
	void delete(long seq);
	void update(Board board);
	void comment_update(@Param("seq") long seq, @Param("count")int count);
	void board_viewnum(@Param("seq") long seq);
	
	//for Search
	List<Board> searchList(@Param("catgo") String catgo, @Param("keyword") String keyword);
	List<Board> searchAll(String keyword);
	
	//comment
	void insertComment(Comment comment);
	List<Comment> CommentList(@Param("board_seq") long seq);
	List<Board> CommentSearch(@Param("keyword") String keyword);
}
