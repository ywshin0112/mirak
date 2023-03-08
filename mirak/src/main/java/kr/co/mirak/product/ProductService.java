package kr.co.mirak.product;

import java.util.List;

public interface ProductService {

	// 상품 목록 조회
	List<ProductVO> productList(ProductVO vo);

	// 상품 프리미엄 목록 조회
	List<ProductVO> productList1(ProductVO vo);

	// 상품 2,3인 목록 조회
	List<ProductVO> productList2(ProductVO vo);

	// 상품 1인 목록 조회
	List<ProductVO> productList3(ProductVO vo);

	// 상품 등록
	void insertProduct(ProductVO vo);

	// 상품 조회
	ProductVO productDetail(ProductVO vo);

	// 상품 수정
	void updateProduct(ProductVO vo);

	// 상품 삭제
	void deleteProduct(ProductVO vo);

}
