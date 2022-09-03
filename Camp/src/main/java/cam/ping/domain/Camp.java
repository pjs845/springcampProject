package cam.ping.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Camp {
	private long id;
	private String business;
	private String name;
	private String content;
	private long review;
	private long viewnum;
	private long recommend;
	private String addr;
	private String phone;
	private String campinfo;
	private String img;
}
