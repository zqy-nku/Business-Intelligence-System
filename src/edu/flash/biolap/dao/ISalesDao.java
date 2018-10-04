package edu.flash.biolap.dao;

import java.util.List;

import edu.flash.biolap.po.Sales;

public interface ISalesDao {
	
	public abstract List<Sales> selectSales();
}
