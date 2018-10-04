package edu.flash.biolap.dao;

import java.util.List;
import edu.flash.biolap.po.Product;

public interface IProductDao {
	
	public abstract List<Product> selectProductAll();
}
