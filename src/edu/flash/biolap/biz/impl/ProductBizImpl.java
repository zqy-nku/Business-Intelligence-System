package edu.flash.biolap.biz.impl;


import java.util.List;

import edu.flash.biolap.biz.IProductBiz;
import edu.flash.biolap.dao.IProductDao;
import edu.flash.biolap.dao.impl.ProductDaoImpl;
import edu.flash.biolap.po.Product;

public class ProductBizImpl implements IProductBiz {
    private IProductDao productDao;
	
	public ProductBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.productDao = new ProductDaoImpl();
	}

	@Override
	public List<Product> selectProductAll() {
		// TODO Auto-generated method stub
		return this.productDao.selectProductAll();
	}

}
