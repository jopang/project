package item.logic;

import item.dao.ItemDao;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.ItemInfo;

@Service
public class ItemLogicImpl implements ItemLogic {

	@Autowired
	private ItemDao itemDao;

	public List<ItemInfo> getItemList(String categori) {
		// TODO Auto-generated method stub
		return this.itemDao.getItemList(categori);
	}

	public List<ItemInfo> searchByItem(String i_name) {
		if (i_name == null || i_name.equals("")) {
			return Collections.emptyList();
		} else {
			return this.itemDao.searchByItem(i_name);
		}
	}

	public ItemInfo getItem(int i_num) {
		return this.itemDao.getItem(i_num);
	}

}
