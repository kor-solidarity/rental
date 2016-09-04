package rent.customer;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import rent.mybatis.SqlMapConfig;

public class CustomerProcessDao {
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public List selectCustomerAll(){
		SqlSession sqlSession = factory.openSession();
		List list = null;
		try {
			CustomerSqlMapperInter inter = (CustomerSqlMapperInter)sqlSession.getMapper(CustomerSqlMapperInter.class);
			list = inter.selectCustomerAll();	//해당 메소드
		} catch (Exception e) {
			System.out.println("selectCustomerAll err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return list;
	}
	
	public  CustomerDto selectCustomerById(String id){
		SqlSession sqlSession = factory.openSession();
		CustomerDto dto = null;
		try {
			CustomerSqlMapperInter inter = (CustomerSqlMapperInter)sqlSession.getMapper(CustomerSqlMapperInter.class);
			dto = inter.selectCustomerById(id); //해당 메소드
		} catch (Exception e) {
			System.out.println("selectCustomerById err" + e);
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
		return dto;
	}
	
	public boolean insertCustomer(CustomerDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CustomerSqlMapperInter inter = (CustomerSqlMapperInter)sqlSession.getMapper(CustomerSqlMapperInter.class);
			if(inter.insertCustomer(dto) > 0) b = true; //해당 메소드
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("insertCustomer err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean updateCustomer(CustomerDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CustomerSqlMapperInter inter = (CustomerSqlMapperInter)sqlSession.getMapper(CustomerSqlMapperInter.class);
			
			//id체크
			/*CustomerDto dto2 = inter.selectDataById(dto.getId());
			if(dto2.isCheckPasswd(dto.getPassword()) == false){
				return b;
			}*/
			
			if(inter.updateCustomer(dto) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("updateCustomer err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
	public boolean deleteCustomer(String id){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			CustomerSqlMapperInter inter = (CustomerSqlMapperInter)sqlSession.getMapper(CustomerSqlMapperInter.class);
			if(inter.deleteCustomer(id) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("deleteCustomer err" + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null) sqlSession.close();
		}	
		return b;
	}
	
}