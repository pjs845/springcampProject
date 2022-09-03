package cam.ping.mapper;

import org.apache.ibatis.annotations.Param;

import cam.ping.domain.Member;

public interface LoginMapper {
	int signUp(Member member);			// ȸ������
	Member loginCheck(Member member);	// �α��� ���� 	
	Member myPageInfo(String email); 	// ���������� ���� ��������
	int deleteMember(Member memer);		// ȸ������
	void passUpdate(@Param("password") String password,@Param("email") String email);	// ��й�ȣ ����
	
}
