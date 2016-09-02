package rent.mybatis;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class SqlMapConfig {
 //ibatis의 SqlMapClient와 같은 역할
 public static SqlSessionFactory sqlSession;
 
 static{
  String resource = "rent//mybatis/Configuration.xml";
  
  try {
   Reader reader = Resources.getResourceAsReader(resource);
   sqlSession = new SqlSessionFactoryBuilder().build(reader);
   reader.close();
   
   //annotation 사용 시----------------------------부터
   Class[] mapper = {
		   rent.car.CarSqlMapperInter.class,
		   /*rent.rent.RentSqlMapperInter.class,
		   rent.company.CompanySqlMapperInter.class,
		   rent.customer.CustomerSqlMapperInter.class,
		   rent.maintenence.MaintenenceSqlMapperInter.class*/
   };
   
   for(Class m:mapper){
	   //mapper 등록 작업
	   sqlSession.getConfiguration().addMapper(m);
   }
   //annotation 사용 시----------------------------
   
  } catch (Exception e) {
   System.out.println("SqlMapConfig 오류 : " + e);
  }
 }
 
 public static SqlSessionFactory getSqlSession(){
  return sqlSession;
 }
}