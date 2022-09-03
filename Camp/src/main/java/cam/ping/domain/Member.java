package cam.ping.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class Member {
	private long member_seq;
	private String email;
	private String name;
	private String phone;
	private String password;
	private int grade;
	private Date rdate;
	private Date udate;
}
