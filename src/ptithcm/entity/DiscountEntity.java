package ptithcm.entity;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="DISCOUNT")
public class DiscountEntity {
	@Id
	@Column(name="discountid")
	private String discountid;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date DayOfStart;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date DayOfEnd;
	private int NumOfDiscount;
	
	@OneToMany (mappedBy = "discount", fetch = FetchType.EAGER)
	private Collection<TicketEntity> ticket;

	public String getDiscountid() {
		return discountid;
	}

	public void setDiscountid(String discountid) {
		this.discountid = discountid;
	}

	public Date getDayOfStart() {
		return DayOfStart;
	}

	public void setDayOfStart(Date dayOfStart) {
		DayOfStart = dayOfStart;
	}

	public Date getDayOfEnd() {
		return DayOfEnd;
	}

	public void setDayOfEnd(Date dayOfEnd) {
		DayOfEnd = dayOfEnd;
	}

	public int getNumOfDiscount() {
		return NumOfDiscount;
	}

	public void setNumOfDiscount(int numOfDiscount) {
		NumOfDiscount = numOfDiscount;
	}

	public Collection<TicketEntity> getTicket() {
		return ticket;
	}

	public void setTicket(Collection<TicketEntity> ticket) {
		this.ticket = ticket;
	}
}
