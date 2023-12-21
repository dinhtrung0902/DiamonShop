package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.CategoriesDao;
import DiamonShop.Dao.MenusDao;
import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dao.SlidesDao;
import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categories;
import DiamonShop.Entity.Menus;
import DiamonShop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategoriesDao categoriesDao;
	@Autowired
	private MenusDao menusDao;
	@Autowired
	private ProductsDao productsDao;
	
	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}

	public List<Categories> GetDataCategory() {
		return categoriesDao.GetDataCategory();
	}
	
	public List<Menus> GetDataMenu() {
		return menusDao.GetDataMenu();
	}

	@Override
	public List<ProductsDto> GetNewProducts() {
		List<ProductsDto> listProducts=productsDao.GetNewProducts();
		return listProducts;
	}
	@Override
	public List<ProductsDto> GetHighProducts() {
		List<ProductsDto> listProducts=productsDao.GetHighProducts();
		return listProducts;
	}
}