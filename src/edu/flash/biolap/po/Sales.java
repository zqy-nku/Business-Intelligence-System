package edu.flash.biolap.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Sales implements Serializable {
	private String store_state;
	private int count;
	
public Sales() {
		super();
		// TODO Auto-generated constructor stub
	}

public String getStore_state() {
	return store_state;
}

public void setStore_state(String store_state) {
	this.store_state = store_state;
}

public int getCount() {
	return count;
}

public void setCount(int count) {
	this.count = count;
}

public Sales(String store_state, int count) {
	super();
	this.store_state = store_state;
	this.count = count;
}

@Override
public String toString() {
	return "Sales [store_state=" + store_state  + ", count="+ count + "]";
}


}