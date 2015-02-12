package msg.logic;

import java.util.List;

import msg.dao.MessageDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vbean.VMessage;
import bean.Message;

/*
@Service 
웹 어플리케이션을 작성해보면 사용자의 입력을 받는 컨트롤러 클래스와 데이터베이스를 처리하는 클래스사이에
비지니스 로직이나 트랜잭션을 처리하는 클래스를 둔다. 스프링은 이 역활을 담당하는 클래스를 서비스 클래스로 정의하고
@Service  이노테이션으로 명명했다. @Service어노테이션을 선언한 클래스는 @Controller 어노테이션을 선언한 클래스처럼
자동으로 빈검색을 통해 빈으로 등록된다.
*/

/*
  @Transactional
  서비스 클래스가 주로 담당하는 역활은 비지니스로직을 처리하거나 트랜잭션을 처리하는 것이다.
 스프링은 트랜젹선을 처리하기 위해 코드를 사용해 처리하는 방법도 제공하지만, 좀더 편하게 처리하기 위해 에노테이션만 지정하면
 자동으로 트랜잭션을 제어하게 기능을 제공한다. 이렇게 어노테이션을 사용해서 트랜잭션을 처리할때 사용하는 것이 
 @Transactional 어노테이션이다. 트랜젝션의 전파 레벨에 따라 작동 방식은 조금 다르긴 하지만, 대부분 메소드의 시작 직전에 트랜잭션을 시작하거나
 이미 시작된 트랜잭션을 그대로 사용한다. 메소드가 끝나기 직전에 커밋을 하고 트랜잭션을 닫는다.
 하지만 메소드에서 런타임 에외가 발생하면 롤백후 트랜잭션을 닫는다.
  */


@Service
public class MessageLogicImpl  implements MessageLogic{
	@Autowired
	private MessageDAO messageDAO;
	@Transactional
	public List<Message> getMessageList(String to_Id) {
		return this.messageDAO.getMessageList(to_Id);
	}
	@Transactional
	public void addArticle(VMessage vmessage) {
		Message message = new Message(vmessage);
		this.messageDAO.addArticle(message);
	}
	@Transactional
	public Message getMessage(int num) {
		this.messageDAO.updArticle(num);
		return this.messageDAO.getMessage(num);
	}
	public void updArticle(int num) {}


}
