package rent.car;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface CarSqlMapperInter {	//sql을 method에 맵핑
	
	@Select("select * from car")
	public List<CarDto> selectDataAll();
	
	@Select("select * from car where car_id=#{car_id}")
	public CarDto selectDataById(String car_id);
	
	@Insert("insert into car values(#{car_id},#{name},#{type},${manufacturer},${color},"
			+ "${spec},${price},${car_year},${p_price},${r_count},${image},${com_id})")
	public int insertData(CarDto dto);
	
	@Update("update car set name=#{name} where car_id=#{car_id}")
	public int updateData(CarDto dto);
	
	@Delete("delete from car where car_id = #{car_id}")
	public int deleteData(String car_id);
	
}
