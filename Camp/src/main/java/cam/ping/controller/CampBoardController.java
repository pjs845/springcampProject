package cam.ping.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import cam.ping.domain.Board;
import cam.ping.domain.Comment;
import cam.ping.service.BoardService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("board")
public class CampBoardController {
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/list")
	public String list(HttpServletRequest request, HttpSession session) {
		session.setAttribute("catgo", "all");
		session.setAttribute("keyword", "");
		return "board/board";
	}
	@PostMapping("/search/list.do")
	public String listSearch(HttpServletRequest request, HttpSession session,
			String catgo, String keyword) {
		if(catgo == null) {
			Object catgoObj = session.getAttribute("catgo");
			if(catgoObj != null) {
				catgo = (String)catgoObj;
			}
		}else {
			catgo = catgo.trim();
		}
		session.setAttribute("catgo", catgo);
		log.info("#catgo2: " + catgo);
		
		//(4) keyword 
		if(keyword == null) {
			Object keywordObj = session.getAttribute("keyword");
			if(keywordObj != null) {
				keyword = (String)keywordObj;
			}
		}else {
			keyword = keyword.trim();
		}
		session.setAttribute("keyword", keyword);
		log.info("#keyword2: " + keyword);
		return "board/board";
	}
	@GetMapping("/write")
	public String write() {
		return "board/write";
	}
	@PostMapping("/write.do")
	public String write(Board board, HttpServletRequest request) {
		String email = request.getParameter("email");
		String content = request.getParameter("summernote");
		log.info("#content: " + content);
		board.setEmail(email);
		boardService.insertS(board);
		return "redirect:list";
	}
	@GetMapping("/content.do")
	public ModelAndView content(long seq, HttpServletRequest request){
		Board board = boardService.selectS(seq);
		ModelAndView mv = new ModelAndView("board/detail", "board", board);
		return mv;
	}
	
	@PostMapping("/comment_write")
	public String comment_write(long seq, HttpServletRequest request){
		String content = request.getParameter("comment");
		String writer = request.getParameter("writer");
		String email = request.getParameter("email");
		//log.info("#SEQ: " + seq);
		//log.info("#COMMENT: " + comment);
		Comment comment = new Comment();
		comment.setBoard_seq(seq);
		comment.setContent(content);
		comment.setWriter(writer);//로그인 한 이름
		comment.setEmail(email);//로그인 한 계정
		boardService.comment_updateS(seq, comment, 1);
		return "redirect:content.do?seq="+seq;
	}
	
	@GetMapping("/update.do")
	public ModelAndView update(long seq, HttpServletRequest request){
		Board board = boardService.selectS(seq);
		ModelAndView mv = new ModelAndView("board/update", "board", board);
		return mv;
	}
	@PostMapping("/update.do")
	public String update(Board board){
		boardService.updateS(board);
		return "redirect:list";
	}
	
	@GetMapping("/delete.do")
	public String delete(long seq){
		boardService.deleteS(seq);
		return "redirect:list";
	}
}
