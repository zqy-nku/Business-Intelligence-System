package edu.flash.biolap.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Product implements Serializable {
	private int product_class_id;
	private int product_id;
	private String product_family;
	private int count;
	
public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

public int getProduct_class_id() {
	return product_class_id;
}

public void setProduct_class_id(int product_class_id) {
	this.product_class_id = product_class_id;
}

public int getProduct_id() {
	return product_id;
}

public int getCount() {
	return count;
}

public void setProduct_id(int product_id) {
	this.product_id = product_id;
}

public String getProduct_family() {
	return product_family;
}

public void setProduct_family(String product_family) {
	this.product_family = product_family;
}

public void setCount(int count) {
	this.count = count;
}

public Product(int product_class_id, int product_id, String product_family, int count) {
	super();
	this.product_class_id = product_class_id;
	this.product_id = product_id;
	this.product_family = product_family;
	this.count = count;
}

@Override
public String toString() {
	return "Product [product_class_id=" + product_class_id + ", product_id="
			+ product_id + ", product_family=" + product_family  + ", count="+ count + "]";
}


}
