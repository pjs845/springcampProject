package cam.ping.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface FileService {
	void insertFileS(MultipartFile img, String filename);
}
