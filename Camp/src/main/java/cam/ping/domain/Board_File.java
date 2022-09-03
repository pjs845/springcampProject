package cam.ping.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Board_File {
	private long seq;
	private String ofilename;
	private String filename;
	private long filesize;
}
