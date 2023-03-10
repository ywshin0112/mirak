package kr.co.mirak.pay;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;

import kr.co.mirak.cart.CartVO;
import kr.co.mirak.product.ProductMapper;
import kr.co.mirak.product.ProductVO;

public class PayServiceImpl implements PayService {

	private SqlSessionTemplate sqlSessionTemplate;

	public PayServiceImpl() {
	}

	public PayServiceImpl(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public List<PayVO> getPayList() {

		PayMapper mapper = sqlSessionTemplate.getMapper(PayMapper.class);
		List<PayVO> payList = mapper.getPayList();

		return payList;
	}

	public PayVO info(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insert(PayVO vo) {
		PayMapper dao = sqlSessionTemplate.getMapper(PayMapper.class);
		int a = dao.insert(vo);
		return a;
	}

	public int update(PayVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ProductVO productDetail(ProductVO vo) {
		ProductMapper mapper = sqlSessionTemplate.getMapper(ProductMapper.class);
		return mapper.productDetail(vo);
	}

	public List<CartVO> cartCheckList(HttpSession session) {
		String myid = (String) session.getAttribute("mem_id");
		PayMapper mapper = sqlSessionTemplate.getMapper(PayMapper.class);
		List<CartVO> list = mapper.cartCheckList(myid);
		return list;
	}

	public int adaptPayVO(PayStringVO payStringVO, HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		int success = 0;
		// pro_code, cart_cnt, pay_req
		PayMapper mapper = sqlSessionTemplate.getMapper(PayMapper.class);
		System.out.println(payStringVO.toString());
		String[] proCode = payStringVO.getPro_code().split(",");
		String[] cartCnt = payStringVO.getCart_cnt().split(",");
		String[] payReq = payStringVO.getPay_req().split(",");

		for (int i = 0; i < proCode.length; i++) {
			PayVO vo = new PayVO();
			vo.setPro_code(proCode[i]);
			vo.setCart_cnt(Integer.parseInt(cartCnt[i]));
			vo.setPay_req(payReq[i]);
			
			mapper.insert(vo);

		}

		return success;
	}

}
