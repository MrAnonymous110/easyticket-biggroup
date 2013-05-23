CREATE DATABASE EasyTicketDemo

Go

USE EasyticketDemo

Go

CREATE TABLE Roles(
    Id int primary key identity,
    Name nvarchar(50) not null,
    Description nvarchar(50)
)

Go

CREATE TABLE Users(
    Id int primary key identity,
    UserName nvarchar(50) not null unique,
    Password nvarchar(50) not null,
    FullName nvarchar(50) not null,
    BrithDay date not null,
    Email    nvarchar(50) not null unique,
    Address  nvarchar(50) not null,
    PhoneNumber nchar(12) not null,
    RoleId   int not null,
    CreateDate date not null
)

Go

CREATE TABLE City(
    Id int primary key identity,
    Name nvarchar(50) not null unique,
)

Go

CREATE TABLE EventType(
    Id int primary key identity,
    Name nvarchar(50) not null unique,
)

Go

CREATE TABLE Event(
    Id int primary key identity,
    Title nvarchar(50) not null,
    Content nvarchar(500) not null,
    StartDate date,
    EndDate   date,
    EventTypeId int not null,
    CityId int,
    Artist nvarchar(50),
    Address nvarchar(100),
    CreateDate date not null,
    ImgSrc nvarchar(100),
    Information nvarchar(500)
)

Go

CREATE TABLE Seat(
   Id int primary key identity,
   Seat nvarchar(20),
   EventId int not null,
   Price money not null,
   AmountTicket int not null,
   Description nvarchar(50)
)

Go

CREATE TABLE Pay(
   Id int primary key identity,
   Name nvarchar(50) not null,
   Description nvarchar(100)
)

Go

CREATE TABLE Cart(
    Id int primary key identity,
    SeatId	int not null,
    Count   int not null,
    Price money not null,
    UserId int not null,
    PayId int not null,
    AcceptStatus bit
)

Go

CREATE TABLE Contact(
    Id int primary key identity,
    Title nvarchar(50) not null,
    UserId int not null,
    Content nvarchar(200) not null,
    Answer nvarchar(200),
    Date date
)

Go

CREATE TABLE FAQ(
   Id int primary key identity,
   Question nvarchar(100) not null,
   Answer nvarchar(500) not null,
   Date date not null
)

Go

CREATE TABLE ADS(
  Id int primary key identity,
  Position nvarchar(50),
  Description nvarchar(50),
  ImgSrc nvarchar(200),
  Link nvarchar(200),
)

Go

ALTER TABLE Users ADD CONSTRAINT fk_user_roleID FOREIGN KEY(roleID) REFERENCES [Roles](Id)
ALTER TABLE Event ADD CONSTRAINT fk_event_eventTypeId FOREIGN KEY(EventTypeID) REFERENCES [EventType](Id)
ALTER TABLE Event ADD CONSTRAINT fk_event_cityID FOREIGN KEY(CityID) REFERENCES [City](Id)
ALTER TABLE Seat ADD CONSTRAINT fk_seat_eventID FOREIGN KEY(EventID) REFERENCES [Event](Id)
ALTER TABLE Cart ADD CONSTRAINT fk_cart_seatID FOREIGN KEY(SeatID) REFERENCES [Seat](Id)
ALTER TABLE Cart ADD CONSTRAINT fk_cart_userID FOREIGN KEY(UserID) REFERENCES [Users](Id)
ALTER TABLE Cart ADD CONSTRAINT fk_cart_payID FOREIGN KEY(PayID) REFERENCES [Pay](Id)
ALTER TABLE Contact ADD CONSTRAINT fk_contact_userID FOREIGN KEY(UserID) REFERENCES [Users](Id)

