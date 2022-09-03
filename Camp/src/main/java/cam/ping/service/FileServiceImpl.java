package cam.ping.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cam.ping.domain.Board_File;
import cam.ping.fileset.Path;
import cam.ping.mapper.FileMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class FileServiceImpl implements FileService {
	@Autowired
	private FileMapper fileMapper;
	@Override
	public void insertFileS(MultipartFile img, String fileName) {
		String ofileName = img.getOriginalFilename();
		long fsize = img.getSize();
		Board_File file = new Board_File();
		file.setFilename(fileName);
		file.setOfilename(ofileName);
		file.setFilesize(fsize);
		log.info("#file: " + file);
		fileMapper.insert(file);
	}
	
}
