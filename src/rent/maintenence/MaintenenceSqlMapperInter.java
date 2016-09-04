package rent.maintenence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface MaintenenceSqlMapperInter {	//sql을 method에 맵핑
	
	@Select("select * from membertab")
	public List<MaintenenceDto> selectMaintenenceAll();
	
	@Select("select * from maintenence where mt_id=#{mt_id}")
	public MaintenenceDto selectMaintenenceById(String id);
	
	@Insert("insert into maintenence values(#{mt_id},#{mt_sdate},#{mt_edate},#{content},#{cost},#{car_id})")
	public int insertMaintenence(MaintenenceDto dto);
	
	@Update("update maintenence set mt_sdate=#{mt_sdate}, mt_edate=#{mt_edate}, content=#{content}, "
			+ "cost=#{cost}, car_id=#{car_id} where mt_id=#{mt_id}")
	public int updateMaintenence(MaintenenceDto dto);

	@Delete("delete from maintenence where mt_id = #{mt_id}")
	public int deleteMaintenence(String id);
	
}
