package kr.co.mirak.pay.chart;

import java.util.List;
import java.util.Map;

import kr.co.mirak.pay.PayVO;

public interface ChartService {
	List<PayVO> list();

	int statUpdate(PayVO vo);

	Map<String, List<Object>> getTotalByMenuList(TotalByMenuVO vo);

	Map<String, List<Object>> getTotalByDayList(TotalByDayVO vo);

}
