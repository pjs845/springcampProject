package cam.ping.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ctc.wstx.util.StringUtil;

import cam.ping.fileset.Path;
import cam.ping.service.FileService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class FileController {
	
	@Autowired
	private FileService service;
	
	@RequestMapping(value="image/upload", method=RequestMethod.POST, produces="application/text;charset=utf8")
	public ResponseEntity<?> summerimage(@RequestParam("file") MultipartFile img,
			HttpServletRequest request){
		String path = Path.FILE_STORE;
		Random random = new Random();
		long currentTime = System.currentTimeMillis();
		int	randomValue = random.nextInt(100);
		String fileName = Long.toString(currentTime) + "_"+randomValue+"_a_"+img.getOriginalFilename();
		try {
			File file = new File(path , fileName);
			log.info("#Path : " + path + fileName);
			service.insertFileS(img, fileName);
			img.transferTo(file);
		}catch(IOException ie) {
			log.info("#IOException: " + ie);
		}
		return ResponseEntity.ok().body("/board/imageupload/upload/"+fileName);
	}
}