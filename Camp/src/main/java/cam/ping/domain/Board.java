package cam.ping.domain;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Board {
	private long seq;
	private String email;
	private String title;
	private String name;
	private String content;
	private long viewnum;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd a hh:mm:ss", timezone="Asia/Seoul")
	private Date rdate;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd a hh:mm:ss", timezone="Asia/Seoul")
	private Date update;
	private int comment_num;
}
