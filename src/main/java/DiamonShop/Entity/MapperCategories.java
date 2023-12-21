package DiamonShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCategories implements RowMapper<Categories>{

	public Categories mapRow(ResultSet rs, int rowNum) throws SQLException {
		Categories Categories = new Categories();
		Categories.setId(rs.getInt("id"));
		Categories.setName(rs.getString("name"));
		Categories.setDescription(rs.getString("description"));
		return Categories;
	}
}