package product.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import product.bean.BankDTO;
import product.bean.ProductDTO;
import product.bean.SchedulesDTO;

@Transactional
@Component("productDAO")
public class ProductDAOMybatis implements ProductDAO{
	@Autowired
	private SqlSession sqlSession;

	public void productUpload(ProductDTO productDTO) {
		sqlSession.insert("productSQL.productUpload", productDTO);		
	}
	
	public void scheduleUpload(String schedules_content, String date) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("schedules_content", schedules_content);
		map.put("date", date);
		sqlSession.insert("productSQL.scheduleUpload", map);		
	}

	public List<ProductDTO> searchResult() {
		List<ProductDTO> list = sqlSession.selectList("productSQL.productList");
		return list;
	}

	public ProductDTO packageView(int seq) {
		ProductDTO productDTO = sqlSession.selectOne("productSQL.detailView",seq);
		return productDTO;
	}

	public List<SchedulesDTO> schedules(int seq) {
		List<SchedulesDTO> scheduleList=sqlSession.selectList("productSQL.schedules",seq);
		return scheduleList;
	}

	public ProductDTO paymentPackage(int seq) {
		ProductDTO productDTO = sqlSession.selectOne("productSQL.detailView",seq);
		return productDTO;
	}

	public BankDTO bankAccount(String bank) {
		BankDTO bankDTO = sqlSession.selectOne("productSQL.bankAccount",bank);
		return bankDTO;
	}

	public void purchasing(int pack_no) {
		int su = sqlSession.update("productSQL.pack_pur_cnt",pack_no);
		System.out.println(su);
	}
}
