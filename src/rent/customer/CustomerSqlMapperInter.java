package rent.customer;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface CustomerSqlMapperInter {	//sql을 method에 맵핑
	
	@Select("select * from Customer")
	public List<CustomerDto> selectCustomerAll();
	
	@Select("select * from customer where cus_id=#{cus_id} and cus_pwd=#{cus_pwd}")
	public CustomerDto selectCustomerById(CustomerBean bean);
	
	@Insert("insert into Customer values(#{cus_id},#{cus_pwd},#{cus_name},#{cus_addr},#{cus_tel},#{cus_mail},#{license})")
	public int insertCustomer(CustomerDto dto);
	
	@Update("update Customer set suc_pwd=#{cus_pwd}, cus_name=#{cus_name}, cus_addr=#{cus_addr}, "
			+ "cus_tel=#{cus_tel}, cus_mail=#{cus_mail}, cus_license=#{license} where cus_id=#{cus_id}")
	public int updateCustomer(CustomerDto dto);

	@Delete("delete from Customer where cus_id = #{cus_id}")
	public int deleteCustomer(String id);
	
}
