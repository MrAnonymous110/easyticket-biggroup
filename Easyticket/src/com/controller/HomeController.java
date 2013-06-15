package com.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.model.entity.Users;
import com.model.logic.CityManager;
import com.model.logic.EventManager;
import com.model.logic.EventTypeManager;
import com.model.logic.RolesManager;
import com.model.logic.SeatsManager;
import com.model.logic.UsersManager;
import com.model.logic.impl.CityManagerImpl;
import com.model.logic.impl.EventManagerImpl;
import com.model.logic.impl.EventTypeManagerImpl;
import com.model.logic.impl.RolesManagerImpl;
import com.model.logic.impl.SeatManagerImpl;
import com.model.logic.impl.UsersManagerImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.process.StringFormat;
import com.model.entity.Event;
import com.model.entity.EventType;
import com.model.entity.City;
import com.model.entity.Roles;
import com.model.entity.Seat;

public class HomeController extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;
	private String error;
	private String success;
	private String username;
	private String password;

	private int eventId;
	private Event event;
	private int seatId;
	private double discount;
	private double price;

	private String email;
	private String address;
	private String birthday;
	private String fullName;
	private String phone;
	private String confirmPassword;

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	// manager
	private UsersManager userMng;
	private EventManager eventMng;
	private CityManager cityMng;
	private EventTypeManager typeMng;
	private SeatsManager seatMng;
	private RolesManager roleMng;

	// search property
	private int type;
	private String search;
	private int p; // page number
	private int pcount; // number page
	private String cityId;
	private String orderBy;
	private int o; // orderby
	private int itemCount;
	private int eventCount;
	private int prevPage;
	private int nextPage;

	private List<Event> events;
	private List<EventType> types;
	private List<City> cities;
	private List<Seat> seats;
	// site map
	private String actionName;
	private String actionUrl;
	
	//json data
    LinkedHashMap<String, Double> data;

	public HomeController() {
		userMng = new UsersManagerImpl();
		eventMng = new EventManagerImpl();
		cityMng = new CityManagerImpl();
		typeMng = new EventTypeManagerImpl();
		types = typeMng.getEventTypes();
		seatMng = new SeatManagerImpl();
		roleMng = new RolesManagerImpl();
	}

	public String Login() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		if (session != null && session.get("user") != null) {
			return "success";
		}
		if (username != null && password != null) {
			Users user = userMng.getUser(username,
					StringFormat.encryptMD5(password));
			if (user != null) {
				session.put("user", user);
				session.put("viewtime", new Date());
				return "success";
			} else
				error = "Username or password is invalid!";
		}
		return "input";
	}

	public boolean validateRegister() {
		boolean flag = true;
		if (username == null || password == null || address == null
				|| birthday == null || email == null || fullName == null
				|| phone == null || confirmPassword == null) {
			flag = false;
			error = "fill all blank text box";
		}
		if (!password.equals(confirmPassword)) {
			flag = false;
			error = "confirm password mismatch password";
		}
		return flag;
	}

	public String register() {
		if (validateRegister()) {

			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			Users u = new Users();
			u.setAddress(address);
			try {
				u.setBirthDay(sdf.parse(birthday));
			} catch (ParseException e) {
				error = "birthday format fail";
				return "input";
			}
			u.setCreateDate(new Date());
			u.setEmail(email);
			u.setFullName(StringFormat.SimpleFormat(fullName));
			u.setPassword(StringFormat.encryptMD5(password));
			u.setPhone(phone);
			Roles role = roleMng.getRole(2);
			u.setUserName(username);
			u.setRole(role);

			userMng.insert(u);
			setSuccess("register success, please login to system");
			return "input";
		}
		return "input";

	}

	public String Logout() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		if (session != null && session.get("user") != null) {
			session.remove("user");
			session.remove("viewtime");
		}
		return "success";
	}

	public String index() {

		Map<String, Object> session = ActionContext.getContext().getSession();
		if (session != null && session.get("count") == null)
			session.put("count", 0);
		itemCount = 9;
		if (cityId == null)
			cityId = "";
		if (p == 0)
			p = 1;
		if (o == 2) {
			orderBy = "event.createTime asc";
		} else {
			o = 1;
			orderBy = "event.createTime desc";
		}
		events = eventMng.findRange(search, cityId, type, orderBy, (p - 1) * 9,
				itemCount);
		events = buildData(events);
		setCities(cityMng.getCities());

		List<Event> list = eventMng.getEvents();
		itemCount = list.size();
		pcount = itemCount / 9;
		if (pcount % 2 != 0)
			pcount++;
		pcount++;
		return "success";
	}

	public String about() {
		actionName = "About";
		actionUrl = "about.html";

		return "success";
	}
	
	private List<Event> buildData(List<Event> list)
	{
		for(Event item : list)
		{
	        String starttime = new SimpleDateFormat("dd/MM/yyyy hh:mm").format(item.getStartTime());
	        String endtime = new SimpleDateFormat("dd/MM/yyyy hh:mm").format(item.getEndTime());
	        item.setStartTimeBuild(starttime);
	        item.setEndTimeBuild(endtime);
	        List<Seat>  seats =   seatMng.getSeatsByEvent(item.getId());
	        if(seats.size() > 0 )
	             item.setDiscount(seats.get(0).getDiscount());
	        else
	        {
	        	 item.setDiscount(0);
	        }
	        item.setDiscount(0);
		}
		return list;
	}
	
	private Event buildData(Event e)
	{
        String starttime = new SimpleDateFormat("dd/MM/yyyy hh:mm").format(e.getStartTime());
        String endtime = new SimpleDateFormat("dd/MM/yyyy hh:mm").format(e.getEndTime());
        e.setStartTimeBuild(starttime);
        e.setEndTimeBuild(endtime);
        List<Seat> seats =   seatMng.getSeatsByEvent(e.getId());
        if(seats.size() > 0 )
             e.setDiscount(seats.get(0).getDiscount());
        else
        {
        	 e.setDiscount(0);
        }
        e.setDiscount(0);
	
     	return e;
	}
	
    public String event()
    {
    	Map<String, Object> session = ActionContext.getContext().getSession();
		if(session != null && session.get("count") == null)
		    session.put("count", 0);
		itemCount = 9;
		if (cityId == null)
			cityId = "";
		if (p == 0)
			p = 1;
		if (o == 2) {
			orderBy = "event.createTime asc";
		} else {
			o = 1;
			orderBy = "event.createTime desc";
		}
		if (type > 0) {
			EventType t = typeMng.getEventType(type);
			actionName = t.getName();
			actionUrl = "event/" + t.getId();
		} else {
			actionName = "Event";
			actionUrl = "event.html";
		}
		events = eventMng.findRange(search, cityId, type, orderBy, (p - 1) * 9,
				itemCount);
		if (events != null)
			events = buildData(events);
		setCities(cityMng.getCities());

		List<Event> list = eventMng.getEvents();
		itemCount = list.size();
		pcount = itemCount / 9;
		if (pcount % 2 != 0)
			pcount++;
		pcount++;
		return "success";
	}

    public String detail()
    {
    	if(eventId > 0){
    	    event = eventMng.getEvent(eventId);
    	    seats = seatMng.getSeatsByEvent(eventId);
    	    event =  buildData(event);
    	}
    	return "success";
    }
    
    public String getPriceSeat()
    {
//    	 data =  new LinkedHashMap<String, Double>();
    	 Seat s = seatMng.getById(seatId);
//    	 data.put("price", s.getPrice());
//    	 data.put("priceDiscount",s.getPrice() - s.getPrice()*s.getDiscount()/100);
    	 
    	 price = s.getPrice();
    	 discount =price- price*s.getDiscount()/100;
    	 return "success";
    }
    
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public List<EventType> getTypes() {
		return types;
	}

	public void setTypes(List<EventType> types) {
		this.types = types;
	}

	public int getP() {
		return p;
	}

	public void setP(int p) {
		this.p = p;
	}

	public int getPcount() {
		return pcount;
	}

	public void setPcount(int pcount) {
		this.pcount = pcount;
	}

	public UsersManager getUserMng() {
		return userMng;
	}

	public void setUserMng(UsersManager userMng) {
		this.userMng = userMng;
	}

	public EventManager getEventMng() {
		return eventMng;
	}

	public void setEventMng(EventManager eventMng) {
		this.eventMng = eventMng;
	}

	public CityManager getCityMng() {
		return cityMng;
	}

	public void setCityMng(CityManager cityMng) {
		this.cityMng = cityMng;
	}

	public EventTypeManager getTypeMng() {
		return typeMng;
	}

	public void setTypeMng(EventTypeManager typeMng) {
		this.typeMng = typeMng;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	/**
	 * @return the orderBy
	 */
	public String getOrderBy() {
		return orderBy;
	}

	/**
	 * @param orderBy
	 *            the orderBy to set
	 */
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public List<City> getCities() {
		return cities;
	}

	public void setCities(List<City> cities) {
		this.cities = cities;
	}

	public SeatsManager getSeatMng() {
		return seatMng;
	}

	public void setSeatMng(SeatsManager seatMng) {
		this.seatMng = seatMng;
	}

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public String getActionUrl() {
		return actionUrl;
	}

	public void setActionUrl(String actionUrl) {
		this.actionUrl = actionUrl;
	}

	public int getPrevPage() {
		if (p > 1)
			return p - 1;
		else
			return p;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		if (p < pcount)
			return p + 1;
		else
			return p;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getItemCount() {
		return itemCount;
	}

	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
	}

	/**
	 * @return the cityId
	 */
	public String getCityId() {
		return cityId;
	}

	/**
	 * @param cityId
	 *            the cityId to set
	 */
	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	public int getEventCount() {
		return eventCount;
	}

	public void setEventCount(int eventCount) {
		this.eventCount = eventCount;
	}

	public int getO() {
		return o;
	}

	public void setO(int o) {
		this.o = o;
	}
    
    

	/**
	 * @return the eventId
	 */
	public int getEventId() {
		return eventId;
	}


	/**
	 * @param eventId the eventId to set
	 */
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}


	public Event getEvent() {
		return event;
	}
 
	

	/**
	 * @return the data
	 */
	public LinkedHashMap<String, Double> getData() {
		return data;
	}


	/**
	 * @param data the data to set
	 */
	public void setData(LinkedHashMap<String, Double> data) {
		this.data = data;
	}


	public void setEvent(Event event) {
		this.event = event;
	}


	public List<Seat> getSeats() {
		return seats;
	}


	public void setSeats(List<Seat> seats) {
		this.seats = seats;
	}


	public int getSeatId() {
		return seatId;
	}


	public void setSeatId(int seatId) {
		this.seatId = seatId;
	}


	public double getDiscount() {
		return discount;
	}


	public void setDiscount(double discount) {
		this.discount = discount;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSuccess() {
		return success;
	}

	public void setSuccess(String success) {
		this.success = success;
	}

}
