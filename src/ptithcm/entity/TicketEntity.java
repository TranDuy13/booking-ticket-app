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
    private Boolean stt;
    private int prices;
	@OneToOne(mappedBy="ticket")
	public String getIdticket() {
		return idticket;
	}
	public Boolean getStt() {
		return stt;
	}
	public void setStt(Boolean stt) {
		this.stt = stt;
	}
	public int getPrices() {
		return prices;
	}
	public void setPrices(int prices) {
		this.prices = prices;
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
	@ManyToOne
	@JoinColumn(name="idplane")
	private PlaneEntity plane;
	public PlaneEntity getPlane() {
		return plane;
	}
	public TicketEntity(String idticket, Boolean typeticket, Boolean stt, int prices, DiscountEntity discount,
			PlaneEntity plane) {
		super();
		this.idticket = idticket;
		this.typeticket = typeticket;
		this.stt = stt;
		this.prices = prices;
		this.discount = discount;
		this.plane = plane;
	}
	public void setPlane(PlaneEntity plane) {
		this.plane = plane;
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
	
	
	public TicketEntity(){
		super();
	}

	
}