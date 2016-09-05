package rent.rent;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import rent.car.CarDto;

public interface RentSqlMapperInter {	//sql을 method에 맵핑
	
	@Select("select * from rent")
	public List<RentDto> selectRentAll();
	
	@Select("select * from rent where rent_id=#{rent_id}")
	public RentDto selectRentById(String id);
	
	@Insert("insert into rent values(#{rent_id},#{cus_id},#{car_id},#{rent_sdate},"
			+ "#{rent_edate},#{rent_ddate},#{insurance})")
	public int insertRent(RentDto dto);
	
	//해당기간에 렌트한데이터가 없을때 렌트에 삽입
	
	@Insert("insert into rent(cus_id,car_id,rent_sdate,rent_edate) select #{cus_id},#{car_id},#{rent_sdate},#{rent_edate} from dual where exists(select car_id from car where (not car_id in(select car_id from rent) and car_id=#{car_id}) or car_id in (select ai from (select car_id ai,count(car_id) ac from rent where(rent_sdate>#{rent_sdate} and rent_sdate>#{rent_edate}) or (rent_edate<#{rent_sdate} and rent_edate<#{rent_edate}) group by car_id) a,(select car_id bi,count(car_id) bc from rent group by car_id) b where ai=bi and ac=bc and ai=#{car_id}))")
	public int insertRentData(RentBean bean);
	
	@Update("update rent set cus_id=#{cus_id}, car_id=#{car_id}, rent_sdate=#{rent_sdate}, "
			+ "rent_edate=#{rent_edate}, rent_ddate=#{rent_ddate}, insurance=#{insurance}"
			+ " where rent_id=#{rent_id}")
	public int updateRent(RentDto dto);
	
	//실제 반납시 업데이트
	@Update("update rent set rent_ddate=#{rent_ddate} where rent_id=#{rent_id}")
	public int updateDdateRent(RentDto dto);

	@Delete("delete from rent where rent_id = #{rent_id}")
	public int deleteRent(String id);
	
}
