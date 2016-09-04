package rent.car;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import rent.customer.SearchBean;
import rent.rent.RentBean;
import rent.rent.RentDto;

public interface CarSqlMapperInter {	//sql을 method에 맵핑
	
	//인자순서 1.rent_sdate,2.rent_edate,3.rent_sdate,4.rent_edate
	@Select("select * from car where car_id in(select ai from (select car_id ai,count(car_id) ac from rent where(rent_sdate>#{rent_sdate} and rent_sdate>#{rent_edate}) or (rent_edate<#{rent_sdate} and rent_edate<#{rent_edate}) group by car_id) a,(select car_id bi,count(car_id) bc from rent group by car_id) b where ai=bi and ac=bc)")
	public List<CarDto> searchCarDataAll(RentBean bean);
	
	// 인자순서1.rent_sdate,2.rent_edate,3.rent_sdate,4.rent_edate,5.car_id
	@Select("select * from car where car_id in(select ai from (select car_id ai,count(car_id) ac from rent where(rent_sdate>#{rent_sdate} and rent_sdate>#{rent_edate}) or (rent_edate<#{rent_sdate} and rent_edate<#{rent_edate}) group by car_id) a,(select car_id bi,count(car_id) bc from rent group by car_id) b where ai=bi and ac=bc and ai=#{car_id})")
	public CarDto searchCarData(RentBean bean);
	
	@Select("select * from car")
	public List<CarDto> selectCarAll();
	
	@Select("select * from car inner join company on car.com_id = company.com_id ")
	public List<CarDto> searchCar();
	
	@Select("select * from car where car_id=#{car_id}")
	public CarDto selectCarById(String car_id);
	
	@Insert("insert into car values(#{car_id},#{car_name},#{type},${manufacturer},${color},"
			+ "${spec},${price},${year},${pprice},${rcount},${image},${com_id})")
	public int insertCar(CarDto dto);
	
	@Update("update car set car_name=#{car_name}, type=#{type}, manufacturer=${manufacturer},"
			+ "color=${color}, spec=${spec}, price=${price}, year=${year}, pprice=${pprice},"
			+ "rcount=${rcount}, image=${image}, com_id=${com_id} where car_id=#{car_id}")
	public int updateCar(CarDto dto);

	@Delete("delete from car where car_id = #{car_id}")
	public int deleteCar(String car_id);
	
	
}













