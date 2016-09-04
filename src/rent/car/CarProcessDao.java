package rent.car;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import rent.customer.SearchBean;
import rent.mybatis.SqlMapConfig;
import rent.rent.RentBean;
import rent.rent.RentDto;

public class CarProcessDao {
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public List selectCarAll(){
		SqlSession sqlSession = factory.openSession();
		List list = null;
		try {
			CarSqlMapperInter inter = (CarSqlMapperInter)sqlSession.getMapper(CarSqlMapperInter.class);
			list = inter.selectCarAll();
		} catch (Exception e) {
			System.out.println("selectCarAll err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return list;
	}
	
	public List searchCarDataAll(RentBean bean){
		SqlSession sqlSession = factory.openSession();
		List list = null;
		try {
			CarSqlMapperInter inter = (CarSqlMapperInter)sqlSession.getMapper(CarSqlMapperInter.class);
			list = inter.searchCarDataAll(bean);
		} catch (Exception e) {
			System.out.println("searchCarDataAll err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return list;
	}
	public CarDto searchCarData(RentBean bean){
		SqlSession sqlSession = factory.openSession();
		CarDto dto=null;
		try {
			CarSqlMapperInter inter = (CarSqlMapperInter)sqlSession.getMapper(CarSqlMapperInter.class);
			dto = inter.searchCarData(bean);
		} catch (Exception e) {
			System.out.println("searchCarData err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return dto;
	}
	
	public List searchCar(){
		SqlSession sqlSession = factory.openSession();
		List list = null;
		try {
			CarSqlMapperInter inter = (CarSqlMapperInter)sqlSession.getMapper(CarSqlMapperInter.class);
			list = inter.searchCar();
		} catch (Exception e) {
			System.out.println("searchCar err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return list;
	}
	
	public  CarDto selectCarById(String id){
		SqlSession sqlSession = factory.openSession();
		CarDto dto = null;
		try {
			CarSqlMapperInter inter = (CarSqlMapperInter)sqlSession.getMapper(CarSqlMapperInter.class);
			dto = inter.selectCarById(id); 
		} catch (Exception e) {
			System.out.println("selectCarById err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return dto;
	}
	
	public boolean insertCar(CarDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CarSqlMapperInter inter = (CarSqlMapperInter)sqlSession.getMapper(CarSqlMapperInter.class);
			if(inter.insertCar(dto) > 0) b = true; 
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("insertCar err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean updateCar(CarDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CarSqlMapperInter inter = (CarSqlMapperInter)sqlSession.getMapper(CarSqlMapperInter.class);
			
			//id체크
			/*CarDto dto2 = inter.selectDataById(dto.getId());
			if(dto2.isCheckPasswd(dto.getPassword()) == false){
				return b;
			}*/
			
			if(inter.updateCar(dto) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("updateCar err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean deleteCar(String id){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CarSqlMapperInter inter = (CarSqlMapperInter)sqlSession.getMapper(CarSqlMapperInter.class);
			if(inter.deleteCar(id) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("deleteCar err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
}
