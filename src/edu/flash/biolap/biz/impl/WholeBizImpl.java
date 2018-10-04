package edu.flash.biolap.biz.impl;


import edu.flash.biolap.biz.IWholeBiz;
import edu.flash.biolap.dao.IWholeDao;
import edu.flash.biolap.dao.impl.WholeDaoImpl;

public class WholeBizImpl implements IWholeBiz {
private IWholeDao wholeDao;
	
	public WholeBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.wholeDao = new WholeDaoImpl();
	}

	@Override
	public int selectSales(){
		// TODO Auto-generated method stub
		return this.wholeDao.selectSales();
	}

	@Override
	public int selectWarehouse() {
		// TODO Auto-generated method stub
		return this.wholeDao.selectWarehouse();
	}

	@Override
	public int selectCustomers() {
		// TODO Auto-generated method stub
		return this.wholeDao.selectCustomers();
	}

	@Override
	public int selectEmployees() {
		// TODO Auto-generated method stub
		return this.wholeDao.selectEmployees();
	}

}
