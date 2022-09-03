package cam.ping.mapper;

import org.apache.ibatis.annotations.Param;

import cam.ping.domain.Member;

public interface LoginMapper {
	int signUp(Member member);			// 회원가입
	Member loginCheck(Member member);	// 로그인 정보 	
	Member myPageInfo(String email); 	// 마이페이지 정보 가져오기
	int deleteMember(Member memer);		// 회원삭제
	void passUpdate(@Param("password") String password,@Param("email") String email);	// 비밀번호 수정
	
}
