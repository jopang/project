package msg.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import bean.Message;
/*
  해당 클래스가 @Repository Bean임을 지정한다.
@Repository
이 어노테이션이 적용된 DAO클래스는 DB Exception Translation을 자동으로 해준다.
 
 리파지토리 클래스는 데이터 접근객체 DAO의 역활을 담당하기 때문에  데이터베이스와 연동해서 데이터를  가져오거나 입력,수정한다.
 스프링을 사용할때 가장 큰 장점은 실질적으로 데이터를 다루는 작업에만 집중할수 있게 해준다.
 설정 파일을 통해 개발자가 매번 데이터베이스 설정을 사용해서 연결을 가져오거나 트랜잭션을 관리하지 않아도 되게 내부에서
 다루는 코드를 제외하면 연결을 가져오거나 트랜잭션을 다루는 등의 매번 중복되는 코드를 찾아볼수 없다.
 그런점으로 인해 개발자는 좀더  데이터를 다루는 데만 집중할 수 있고 코드도 간결해진다.
 
 
 @Repository 어노테이션도 컨트롤러와 서비스 클래스에서 사용한 @Controller, @Service 어노테이션처럼 빈으로 등록하기 위해 사용한다.
  
  */
@Repository
public class MessageDaoImpl extends SqlSessionDaoSupport implements MessageDAO{


	public List<Message> getMessageList(String to_Id) {
		System.out.println("to_id"+to_Id);
		// TODO Auto-generated method stub
		return getSqlSession().selectList("getMessageList",to_Id);
	}

	public void addArticle(Message message) {
		System.out.println("addArticle :"+message);
		// TODO Auto-generated method stub
		getSqlSession().insert("insertMessage",message);
	}

	public Message getMessage(int num) {
		System.out.println("getMessage" + num);
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getMessage",num);
	}

	public void updArticle(int num) {
		// TODO Auto-generated method stub
		System.out.println("update" + num);
		getSqlSession().selectOne("updateMessage",num);
	}



}
