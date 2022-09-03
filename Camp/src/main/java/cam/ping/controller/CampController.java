package cam.ping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import cam.ping.domain.Board;

@Controller
public class CampController {

	@GetMapping("/main")
	public String home() {
		return "main/main";
	}
	@GetMapping("/paging")
	public String paging() {
		return "main/paging";
	}
	@GetMapping("/map")
	public String map() {
		return "campmap/map";
	}
}
