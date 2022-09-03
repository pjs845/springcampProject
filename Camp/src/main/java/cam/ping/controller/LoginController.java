package cam.ping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cam.ping.domain.Member;
import cam.ping.service.LoginService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
@RequestMapping("login")
public class LoginController {
	
	private LoginService loginService;
	
	//로그인 창으로 이동
	@GetMapping("login.do")
	public String moveLogin() {
		return "login/login";
	}
	
	//로그인 체크
	@PostMapping("logincheck.do")
	public String loginCheck(HttpServletRequest request, HttpSession session, Member member, RedirectAttributes ratb) {
		Member memberC = loginService.loginCheck(member);		
		
		log.info("@@member"+member);
		log.info("@@memberC"+memberC);

		if(memberC == null) {
			session.setAttribute("member", null);
			ratb.addFlashAttribute("loginError", false);
		}else {
			session.setAttribute("member", memberC);
		}
		return "redirect:../main";
	}
	
	// 로그아웃
	@GetMapping("logout.do")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
	
	//마이페이지
	@GetMapping("mypage")
	public ModelAndView moveMypage(String email) {
		Member member = loginService.myPageInfo(email);
		ModelAndView mav = new ModelAndView("login/mypage", "member", member);
		return mav;
	}
	
	// 회원가입 
	@GetMapping("signup.do")
	public String moveSignup() {
		return "login/signup";
	}
	@PostMapping("signup.do")
	public String moveSignup(Member member) {
		loginService.signUpS(member);
		log.info("@@회원가입 실행"+member);
		return "redirect:login.do";
	}
	
	//마이페이지에서 ~ing 일단 보류
	@GetMapping("updateinfo")
	public String myPage_Update() {
		return "login/updateinfo";
	}
	
	//회원삭제이동 
	@GetMapping("deleteAcount")
	public ModelAndView movedelete(String email) {
		Member member = loginService.myPageInfo(email);
		ModelAndView mav = new ModelAndView("login/deleteAcount", "member", member);
		return mav;
	}
	//회원 삭제 후 세션 아웃
	@PostMapping("deleteAcount.do")
	public String delelteMember(HttpSession session, Member member, RedirectAttributes ratb) {
		String email = member.getEmail();
		String password = member.getPassword();
		Member member_check = loginService.myPageInfo(email);
		String emailMC = member_check.getEmail();
		String passMC = member_check.getPassword();
		log.info("@@DELETE: "+member);
		log.info("@@email: "+email+", password: "+password);
		log.info("@@MEMBER_CHECK: "+member_check);
		if(emailMC.equals(email) && passMC.equals(password)) {
			loginService.deleteMember(member);
			session.invalidate();
		}else {
			ratb.addFlashAttribute("delError", false);
		}
		return "redirect:../main";

	}
	
	// 비밀번호 변경 
	@GetMapping("checkpassword")
	public ModelAndView movePassUpdate(String email) {
		Member member = loginService.myPageInfo(email);
		ModelAndView mav = new ModelAndView("login/checkpassword", "member", member);
		return mav;
	}
	
	@PostMapping("checkpassword")
	public String changePass(HttpSession session,@Param("password") String password, String password2) {
		Object obj = session.getAttribute("member");
		Member member = (Member)obj;
		String email = member.getEmail();
		log.info("@@DELETE: "+email);
		log.info("@@password: "+password+", password2: "+password2);
		if(password.equals(password2)) {
			loginService.passUpdate(password, email);
		}else {
			return "main/main";
		}
		return "redirect:../main";
	}
}
