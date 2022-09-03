package cam.ping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cam.ping.domain.Camp;
import cam.ping.mapper.CampMapper;

@Service
public class CampServiceImpl implements CampService {
	@Autowired
	private CampMapper campMapper;
	
	@Override
	public List<Camp> listS() {
		return campMapper.list();
	}

}
