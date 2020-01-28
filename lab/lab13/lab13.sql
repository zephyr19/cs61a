.read data.sql

-- QUESTIONS --



-------------------------------------------------------------------------
------------------------ Give Interest- ---------------------------------
-------------------------------------------------------------------------

update accounts set amount = amount * 1.02 where amount <> 0;


create table give_interest_result as select * from accounts; -- just for tests

-------------------------------------------------------------------------
------------------------ Split Accounts ---------------------------------
-------------------------------------------------------------------------

create table temp as select * from accounts;
delete from accounts;
insert into accounts select name || "'s Savings account", amount/2 from temp;
insert into accounts select name || "'s Checking account", amount/2 from temp;



create table split_account_results as select * from accounts; -- just for tests

-------------------------------------------------------------------------
-------------------------------- Whoops ---------------------------------
-------------------------------------------------------------------------

drop table accounts;


CREATE TABLE average_prices AS
  SELECT category, avg(MSRP) as average_price from products group by category;

CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) as lowest_price from inventory group by item;

CREATE TABLE shopping_list AS
  SELECT name, store from products, lowest_prices where item = name
  	group by category having min(MSRP/rating) = MSRP/rating;

CREATE TABLE total_bandwidth AS
  SELECT sum(Mbs) from stores, shopping_list
  	where stores.store = shopping_list.store;
