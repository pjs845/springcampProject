package cam.ping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cam.ping.domain.Member;
import cam.ping.mapper.LoginMapper;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public int signUpS(Member member) {
		return loginMapper.signUp(member);
	}

	@Override
	public Member loginCheck(Member member) {
		return loginMapper.loginCheck(member);
	}

	@Override
	public Member myPageInfo(String email) {
		return loginMapper.myPageInfo(email);
	}

	@Override
	public int deleteMember(Member member) {
		loginMapper.deleteMember(member);
		return 1;
	}

	@Override
	public String passUpdate(String password, String email) {
		loginMapper.passUpdate(password, email);
		return "";
	}
}
