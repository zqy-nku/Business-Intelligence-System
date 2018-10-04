package edu.flash.biolap.biz.impl;


import java.util.List;

import edu.flash.biolap.biz.ISalesBiz;
import edu.flash.biolap.dao.ISalesDao;
import edu.flash.biolap.dao.impl.SalesDaoImpl;
import edu.flash.biolap.po.Sales;

public class SalesBizImpl implements ISalesBiz {
    private ISalesDao salesDao;
	
	public SalesBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.salesDao = new SalesDaoImpl();
	}

	@Override
	public List<Sales> selectSales() {
		// TODO Auto-generated method stub
		return this.salesDao.selectSales();
	}

}
