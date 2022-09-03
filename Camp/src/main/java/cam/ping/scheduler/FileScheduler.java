package cam.ping.scheduler;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import cam.ping.domain.Board_File;
import cam.ping.fileset.Path;
import cam.ping.mapper.FileMapper;
import cam.ping.service.FileService;
import lombok.extern.log4j.Log4j;

@Log4j
@Component
public class FileScheduler {
	@Autowired
	private FileMapper fileMapper;
	//@Scheduled(cron = "0 0/1 * 1/1 * ? *")
	@Scheduled(cron="0 0/1 * 1/1 * ? *")
	public void Scheduler() {
		File dir = new File(Path.FILE_STORE);
		File fileList[] = dir.listFiles();
		for (int i = 0; i < fileList.length; i++) {
		    fileMapper.delete(fileList[i].getName());
		    log.info("#name: " + fileList[i].getName());
		}
	}
	@Scheduled(cron="0 0/1 * 1/1 * ? *")
	public void DeleteFile() {
		File dir = new File(Path.FILE_STORE);
		File fileList[] = dir.listFiles();
		for (int i = 0; i < fileList.length; i++) {
			List<Board_File> list = fileMapper.listall();
			File dirfile = new File(Path.FILE_STORE+fileList[i].getName());
			int cnt = 0;
		    for (Board_File file: list) {
				String fname = file.getFilename();
				if(fname.equals(fileList[i].getName())) {
					cnt++;
				}
			}
		    if(cnt==0) {
		    	if(dirfile.delete()) {
		    		log.info("¼º°ø");
				}
		    }
		}
	}
}
