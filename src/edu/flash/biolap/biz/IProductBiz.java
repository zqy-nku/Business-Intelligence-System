package edu.flash.biolap.biz;

import java.util.List;

import edu.flash.biolap.po.Product;


public interface IProductBiz {
	
	public abstract List<Product> selectProductAll();

}