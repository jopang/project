package item.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import bean.ItemInfo;

@Repository
public class ItemDaoImpl extends SqlSessionDaoSupport implements ItemDao {

	public List<ItemInfo> getItemList(String categori) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("getItemList", categori);
	}

	public List<ItemInfo> searchByItem(String title) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("searchByItem", title);
	}
	
	public ItemInfo getItem(int i_num) {
		return getSqlSession().selectOne("getItem", i_num);
	}
}