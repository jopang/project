package msg.dao;

import java.util.List;

import bean.Message;

public interface MessageDAO {
public List<Message> getMessageList(String to_Id);
public void addArticle(Message message);// 게시물추가
public Message getMessage(int num);
public void updArticle(int num);
}
