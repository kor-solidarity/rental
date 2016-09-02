package rent.car;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import rent.mybatis.SqlMapConfig;

public class CarProcessDao {
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public List selectCarAll(){
		SqlSession sqlSession = factory.openSession();
		List list = null;
		try {
			CarSqlMapperInter inter = (CarSqlMapperInter)sqlSession.getMapper(CarSqlMapperInter.class);
			list = inter.selectDataAll();	
		} catch (Exception e) {
			System.out.println("selectDataAll err" + e);
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
			dto = inter.selectDataById(id); 
		} catch (Exception e) {
			System.out.println("selectDataById err" + e);
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
			if(inter.insertData(dto) > 0) b = true; 
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("insertData err" + e);
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
			
			if(inter.updateData(dto) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("updateData err" + e);
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
			if(inter.deleteData(id) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("insertData err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
}
