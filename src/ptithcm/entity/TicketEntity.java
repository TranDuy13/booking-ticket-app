package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="TICKET")
public class TicketEntity{
	@Id
	@Column(name="idticket")
    private String idticket;
    private Boolean typeticket;
    private int price;
	@OneToOne(mappedBy="ticket")
	public String getIdticket() {
		return idticket;
	}
	@ManyToOne
	@JoinColumn(name="discountid")
	private DiscountEntity discount;
	public DiscountEntity getDiscount() {
		return discount;
	}
	public void setDiscount(DiscountEntity discount) {
		this.discount = discount;
	}
	public void setIdticket(String idticket) {
		this.idticket = idticket;
	}
	public Boolean getTypeticket() {
		return typeticket;
	}
	public void setTypeticket(Boolean typeticket) {
		this.typeticket = typeticket;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public TicketEntity(){
		super();
	}

	public TicketEntity(String idticket, Boolean typeticket, int price) {
		super();
		this.idticket = idticket;
		this.typeticket = typeticket;
		this.price = price;
	}
	
	
	
}