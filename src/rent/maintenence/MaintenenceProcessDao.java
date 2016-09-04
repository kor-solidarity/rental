package rent.maintenence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import rent.mybatis.SqlMapConfig;

public class MaintenenceProcessDao {
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public List selectMaintenenceAll(){
		SqlSession sqlSession = factory.openSession();
		List list = null;
		try {
			MaintenenceSqlMapperInter inter = (MaintenenceSqlMapperInter)sqlSession.getMapper(MaintenenceSqlMapperInter.class);
			list = inter.selectMaintenenceAll();	//해당 메소드
		} catch (Exception e) {
			System.out.println("selectMaintenenceAll err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return list;
	}
	
	public  MaintenenceDto selectMaintenenceById(String id){
		SqlSession sqlSession = factory.openSession();
		MaintenenceDto dto = null;
		try {
			MaintenenceSqlMapperInter inter = (MaintenenceSqlMapperInter)sqlSession.getMapper(MaintenenceSqlMapperInter.class);
			dto = inter.selectMaintenenceById(id); //해당 메소드
		} catch (Exception e) {
			System.out.println("selectMaintenenceById err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return dto;
	}
	
	public boolean insertMaintenence(MaintenenceDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			MaintenenceSqlMapperInter inter = (MaintenenceSqlMapperInter)sqlSession.getMapper(MaintenenceSqlMapperInter.class);
			if(inter.insertMaintenence(dto) > 0) b = true; //해당 메소드
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("insertMaintenence err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean updateMaintenence(MaintenenceDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			MaintenenceSqlMapperInter inter = (MaintenenceSqlMapperInter)sqlSession.getMapper(MaintenenceSqlMapperInter.class);
			
			//id체크
			/*MaintenenceDto dto2 = inter.selectDataById(dto.getId());
			if(dto2.isCheckPasswd(dto.getPassword()) == false){
				return b;
			}*/
			
			if(inter.updateMaintenence(dto) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("updateMaintenence err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean deleteMaintenence(String id){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			MaintenenceSqlMapperInter inter = (MaintenenceSqlMapperInter)sqlSession.getMapper(MaintenenceSqlMapperInter.class);
			if(inter.deleteMaintenence(id) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("deleteMaintenence err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
}
