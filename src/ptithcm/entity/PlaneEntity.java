package ptithcm.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="PLANE")
public class PlaneEntity {
	@Id
	@Column(name="idplane")
	private String idplane;
	private String destination;
	private String departFrom;
	private String airport;
	private String airline;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-M-yyyy hh:mm:ss")
	private Date flighttime;

	public String getIdplane() {
		return idplane;
	}
	public void setIdplane(String idplane) {
		this.idplane = idplane;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDepartFrom() {
		return departFrom;
	}
	public void setDepartFrom(String departFrom) {
		this.departFrom = departFrom;
	}
	public String getAirport() {
		return airport;
	}
	public void setAirport(String airport) {
		this.airport = airport;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public Date getFlighttime() {
		return flighttime;
	}
	public void setFlighttime(Date flighttime) {
		this.flighttime = flighttime;
	}

	}
