package product.dao;
import java.util.List;

import product.bean.BankDTO;
import product.bean.ProductDTO;
import product.bean.SchedulesDTO;
import product.bean.TravelReviewDTO;

public interface ProductDAO {

	public void productUpload(ProductDTO productDTO);

	public void scheduleUpload(String schedules_content, String date);

	public List<ProductDTO> searchResult();

	public List<ProductDTO> packageView(String category);

	public List<SchedulesDTO> schedules(int seq);

	public ProductDTO paymentPackage(int seq);

	public BankDTO bankAccount(String bank);

	public void purchasing(int pack_no);

	public ProductDTO detailView(int seq);

	public List<TravelReviewDTO> travelReviewList(int pack_no);
	
	public int getTotalA(int pack_no);
}
