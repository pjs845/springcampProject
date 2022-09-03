package cam.ping.domain;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
public class BoardVo {
	String catgo; //for Search 
	String keyword; //for Search 
	public String getCatgo() { //for Search
		return catgo;
	}
	public String getKeyword() { //for Search
		return keyword;
	}
}
