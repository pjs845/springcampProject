package cam.ping.service;

import cam.ping.domain.Member;

public interface LoginService {
	int signUpS(Member member);			// 회원가입
	Member loginCheck(Member member);	// 로그인 정보 
	Member myPageInfo(String email);	// 마이페이지 정보 가져오기
	int deleteMember(Member member);	// 회원삭제
	String passUpdate(String password, String email);	// 비밀번호 수정

}
