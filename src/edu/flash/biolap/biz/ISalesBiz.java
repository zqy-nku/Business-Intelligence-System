package edu.flash.biolap.biz;

import java.util.List;

import edu.flash.biolap.po.Sales;


public interface ISalesBiz {
	
	public abstract List<Sales> selectSales();

}