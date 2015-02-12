package msg.logic;

import java.util.List;

import vbean.VMessage;
import bean.Message;

public interface MessageLogic {
	 public List<Message> getMessageList(String to_Id);
	 public void addArticle(VMessage vmessage);// 게시물추가
	 public Message getMessage(int num); //메세지 select
	 public void updArticle(int num);
}
