package DiamonShop.Service;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public static PaginatesDto GetInfoPaginates() {
		PaginatesDto paginate = new PaginatesDto();
		return paginate;
	}
}
