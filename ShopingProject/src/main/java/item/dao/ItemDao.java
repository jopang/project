package item.dao;

import java.util.List;

import bean.ItemInfo;

public interface ItemDao {
	//메뉴 카테고리
	public List<ItemInfo> getItemList(String categori);
	//상품 검색
	public List<ItemInfo> searchByItem(String title);
	//상품 상세 조회
	public ItemInfo getItem(int i_num);
}
