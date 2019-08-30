# basdat-kelompok5-TI-41-05



drop table if exists TBL_BERANGGOTAKAN;

drop table if exists TBL_DIVISION;

drop table if exists TBL_EMPLOYEE;

drop table if exists TBL_PRESENSI;


create table TBL_BERANGGOTAKAN
(
   DIVISION_ID          varchar(20) not null,
   EMPLOYEE_ID          varchar(10) not null,
   primary key (DIVISION_ID, EMPLOYEE_ID)
);


create table TBL_DIVISION
(
   DIVISION_ID          varchar(20) not null,
   DIVISION_NAME        varchar(20),
   primary key (DIVISION_ID)
);


create table TBL_EMPLOYEE
(
   EMPLOYEE_ID          varchar(10) not null,
   ARRIVAL_TIME         datetime,
   EMPLOYEE_NAME        varchar(20),
   primary key (EMPLOYEE_ID)
);


create table TBL_PRESENSI
(
   ARRIVAL_TIME         datetime not null,
   EMPLOYEE_ID          varchar(10),
   primary key (ARRIVAL_TIME)
);

alter table TBL_BERANGGOTAKAN add constraint FK_BERANGGOTAKAN foreign key (DIVISION_ID)
      references TBL_DIVISION (DIVISION_ID) on delete cascade on update restrict;

alter table TBL_BERANGGOTAKAN add constraint FK_BERANGGOTAKAN2 foreign key (EMPLOYEE_ID)
      references TBL_EMPLOYEE (EMPLOYEE_ID) on delete cascade on update restrict;

alter table TBL_EMPLOYEE add constraint FK_MELAKUKAN foreign key (ARRIVAL_TIME)
      references TBL_PRESENSI (ARRIVAL_TIME) on delete cascade on update restrict;

alter table TBL_PRESENSI add constraint FK_MELAKUKAN2 foreign key (EMPLOYEE_ID)
      references TBL_EMPLOYEE (EMPLOYEE_ID) on delete cascade on update restrict;

