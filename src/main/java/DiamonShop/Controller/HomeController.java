package DiamonShop.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
	
	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categories", _homeService.GetDataCategory());
		_mvShare.addObject("new_products", _homeService.GetNewProducts());
		_mvShare.addObject("high_products", _homeService.GetHighProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
	
	@RequestMapping(value = { "/lien-he" })
	public ModelAndView Contact() {
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categories", _homeService.GetDataCategory());
		_mvShare.addObject("new_products", _homeService.GetNewProducts());
		_mvShare.addObject("high_products", _homeService.GetHighProducts());
		_mvShare.setViewName("user/contact");
		return _mvShare;
	}
}
