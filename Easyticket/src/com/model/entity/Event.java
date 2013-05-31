package com.model.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="Event")
public class Event {
     
	public Event(){}
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private Integer id;
	
	@Column(name="Title",length=100)
	private String title;
	
	@Column(name="Content", length=500)
	private String content;
	
	@Column(name="StartTime")
	@Temporal(TemporalType.TIMESTAMP)
	private Date startTime;

	@Column(name="EndTime")
	@Temporal(TemporalType.TIMESTAMP)
	private Date endTime;
	
	@Column(name="CreateTime")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createTime;
	
	@Column(name="Artist",length=50)
	private String artist;
	
	@Column(name="Address", length = 100)
	private String address;
	
	@Column(name="ImgSrc", length = 100)
	private String ImgSrc;
	
    @ManyToOne
    @JoinColumn(name="CityId")
    private City city;
    
    @ManyToOne
    @JoinColumn(name="EventTypeId")
    private EventType eventType;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImgSrc() {
		return ImgSrc;
	}

	public void setImgSrc(String imgSrc) {
		ImgSrc = imgSrc;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public EventType getEventType() {
		return eventType;
	}

	public void setEventType(EventType eventType) {
		this.eventType = eventType;
	}
    
    
    
    
}
