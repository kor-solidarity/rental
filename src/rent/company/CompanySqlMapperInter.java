package rent.company;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface CompanySqlMapperInter {	//sql을 method에 맵핑
	
	@Select("select * from company")
	public List<CompanyDto> selectCompanyAll();
	
	@Select("select * from company where com_id=#{com_id}")
	public CompanyDto selectCompanyById(String id);
	
	@Insert("insert into company values(#{com_id},#{com_pwd},#{com_name},#{com_addr},"
			+ "#{com_tel},#{com_mail},#{sign})")
	public int insertCompany(CompanyDto dto);
	
	@Update("update company set com_pwd=#{com_pwd}, com_name=#{com_name}, com_addr=#{com_addr},"
			+ " com_tel=#{com_tel}, com_mail=#{com_mail}, sign=#{sign}"
			+ " where com_id=#{com_id}")
	public int updateCompany(CompanyDto dto);

	@Delete("delete from company where com_id = #{com_id}")
	public int deleteCompany(String id);
	
}
