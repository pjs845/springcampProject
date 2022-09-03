package cam.ping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cam.ping.domain.Board_File;

public interface FileMapper {
	void insert(Board_File file);
	void delete(@Param("filename") String fileName);
	List<Board_File> listall();
}
