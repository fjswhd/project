create table emp (
	empno 	 		varchar2(10)	primary key,
	password 		varchar2(15) 	not null,
	name 	 		varchar2(15) 	not null,
	dname 	 		varchar2(15)	not null,
	email 	 		varchar2(30) 	not null,
	address  		varchar2(50) 	not null,
	birthday 		date			not null,
	hiredate 		date 			default sysdate,
	emp_reg_auth 	char(1)			default 'n' check(emp_reg_auth in ('y', 'n')),
	resign 			char(1) 		default 'n' check(resign in ('y', 'n'))
);

insert into emp values ('21-00001', '1234', '이종민', '재고팀', 'fjswhd93@gmail.com', '고양시', to_date('930502', 'YYMMDD'), sysdate, 'y', 'n');

