package cam.ping.domain;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Comment {
	private long seq;
	private long board_seq;
	private String writer;
	private String content;
	private String email;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd a hh:mm:ss", timezone="Asia/Seoul")
	private Date rdate;
}
