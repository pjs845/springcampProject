package cam.ping.controller;

import java.io.*;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cam.ping.domain.Board;
import cam.ping.domain.Camp;
import cam.ping.domain.Comment;
import cam.ping.service.BoardService;
import cam.ping.service.CampService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("ajax")
public class CampAjaxController {
	private CampService campService;
	private BoardService boardService; 
	
	@GetMapping("searchCamp")
	public @ResponseBody List<Camp> search01() {
		List<Camp> camps = campService.listS(); 
		return camps;
	}
	@GetMapping("boardList")
	public @ResponseBody List<Board> searchBoard( String catgo, String keyword) {
		List<Board> listResult = null;	
		log.info("#catgo1: " + catgo);
		log.info("#keyword1: " + keyword);
		if(catgo.length()==0) {
			listResult = boardService.listallS();
		}else {
			if(catgo.equals("all")) {
				log.info("#ALL");
				listResult = boardService.searchAllS(keyword); //제목+내용검색
			}
			else if(catgo.equals("comment")){
				log.info("#COMMENT");
				listResult = boardService.CommentSearchS(keyword);
			}
			else{
				log.info("#OTHER");
				log.info("#catgo3: " + catgo);
				listResult = boardService.searchListS(catgo, keyword);
			}
		}
		return listResult;
	}
	@GetMapping("commentList")
	public @ResponseBody List<Comment> searchComment(long seq) {
		List<Comment> comments = boardService.CommentListS(seq);
		return comments;
	}
}

