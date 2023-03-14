package kr.co.mirak.pay.paymethod;

public class Amount {
	private int total;
	private int tax_free;
	private int vat;
	private int point;
	private int discount;
	private int green_deposit;
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getTax_free() {
		return tax_free;
	}
	public void setTax_free(int tax_free) {
		this.tax_free = tax_free;
	}
	public int getVat() {
		return vat;
	}
	public void setVat(int vat) {
		this.vat = vat;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getGreen_deposit() {
		return green_deposit;
	}
	public void setGreen_deposit(int green_deposit) {
		this.green_deposit = green_deposit;
	}
	@Override
	public String toString() {
		return "Amount [total=" + total + ", tax_free=" + tax_free + ", vat=" + vat + ", point=" + point + ", discount="
				+ discount + ", green_deposit=" + green_deposit + "]";
	}
	
	
}
