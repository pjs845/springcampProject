package cam.ping.service;

import cam.ping.domain.Member;

public interface LoginService {
	int signUpS(Member member);			// ȸ������
	Member loginCheck(Member member);	// �α��� ���� 
	Member myPageInfo(String email);	// ���������� ���� ��������
	int deleteMember(Member member);	// ȸ������
	String passUpdate(String password, String email);	// ��й�ȣ ����

}
