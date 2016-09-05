package rent.rent;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import rent.mybatis.SqlMapConfig;

public class RentProcessDao {
	private SqlSessionFactory factory = rent.mybatis.SqlMapConfig.getSqlSession();
	
	public List selectRentAll(){
		SqlSession sqlSession = factory.openSession();
		List list = null;
		try {
			RentSqlMapperInter inter = (RentSqlMapperInter)sqlSession.getMapper(RentSqlMapperInter.class);
			list = inter.selectRentAll();	//해당 메소드
		} catch (Exception e) {
			System.out.println("selectRentAll err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return list;
	}
	
	public  RentDto selectRentById(String id){
		SqlSession sqlSession = factory.openSession();
		RentDto dto = null;
		try {
			RentSqlMapperInter inter = (RentSqlMapperInter)sqlSession.getMapper(RentSqlMapperInter.class);
			dto = inter.selectRentById(id); //해당 메소드
		} catch (Exception e) {
			System.out.println("selectRentById err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return dto;
	}
	
	public boolean insertRent(RentBean bean){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			RentSqlMapperInter inter = (RentSqlMapperInter)sqlSession.getMapper(RentSqlMapperInter.class);
			if(inter.insertRentData(bean) > 0) b = true; //해당 메소드
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("insertRent err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean updateRent(RentDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			RentSqlMapperInter inter = (RentSqlMapperInter)sqlSession.getMapper(RentSqlMapperInter.class);
			
			//id체크
			/*RentDto dto2 = inter.selectDataById(dto.getId());
			if(dto2.isCheckPasswd(dto.getPassword()) == false){
				return b;
			}*/
			
			if(inter.updateRent(dto) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("updateRent err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean deleteRent(String id){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			RentSqlMapperInter inter = (RentSqlMapperInter)sqlSession.getMapper(RentSqlMapperInter.class);
			if(inter.deleteRent(id) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("deleteRent err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
}
