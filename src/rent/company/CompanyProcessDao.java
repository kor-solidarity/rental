package rent.company;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import rent.mybatis.SqlMapConfig;

public class CompanyProcessDao {
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	
	public List selectCompanyAll(){
		SqlSession sqlSession = factory.openSession();
		List list = null;
		try {
			CompanySqlMapperInter inter = (CompanySqlMapperInter)sqlSession.getMapper(CompanySqlMapperInter.class);
			list = inter.selectCompanyAll();	//해당 메소드
		} catch (Exception e) {
			System.out.println("selectCompanyAll err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return list;
	}
	
	
	public  CompanyDto selectCompanyById(String id){
		SqlSession sqlSession = factory.openSession();
		CompanyDto dto = null;
		try {
			CompanySqlMapperInter inter = (CompanySqlMapperInter)sqlSession.getMapper(CompanySqlMapperInter.class);
			dto = inter.selectCompanyById(id); //해당 메소드
		} catch (Exception e) {
			System.out.println("selectCompanyById err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return dto;
	}
	
	public boolean insertCompany(CompanyDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CompanySqlMapperInter inter = (CompanySqlMapperInter)sqlSession.getMapper(CompanySqlMapperInter.class);
			if(inter.insertCompany(dto) > 0) b = true; //해당 메소드
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("insertCompany err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean updateCar(CompanyDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CompanySqlMapperInter inter = (CompanySqlMapperInter)sqlSession.getMapper(CompanySqlMapperInter.class);
			
			//id체크
			/*CompanyDto dto2 = inter.selectDataById(dto.getId());
			if(dto2.isCheckPasswd(dto.getPassword()) == false){
				return b;
			}*/
			
			if(inter.updateCompany(dto) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("updateCompany err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean deleteCompany(String id){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CompanySqlMapperInter inter = (CompanySqlMapperInter)sqlSession.getMapper(CompanySqlMapperInter.class);
			if(inter.deleteCompany(id) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("deleteCompany err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
}
