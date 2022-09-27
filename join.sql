--join
select clients.id, clients.first_name, clients.last_name, clients.email, accounts.account_no, accounts.balance from clients  left join accounts  on clients.id =  accounts.client_id;

select accounts.account_no, accounts.client_id, account_types.name from accounts left join account_types on accounts.id = account_types.id;

select transactions.id, transactions.amount, transactions_types.name from transactions join transactions_types on transactions.id = transactions_types.id;

select transactions.id, transactions.amount, transactions_types.name from transactions right join transactions_types on transactions.id = transactions_types.id;

--view
create view view_first as select clients.id, clients.first_name, clients.last_name, clients.email, accounts.account_no, accounts.balance from clients  left join accounts  on clients.id =  accounts.client_id;
select * from view_first 
create view view_second as select accounts.account_no, accounts.client_id, account_types.name from accounts left join account_types on accounts.id = account_types.id;
select * from view_second  
create view view_third as select transactions.id, transactions.amount, transactions_types.name from transactions join transactions_types on transactions.id = transactions_types.id;
select * from view_third 
create view view_four as select transactions.id, transactions.amount, transactions_types.name from transactions right join transactions_types on transactions.id = transactions_types.id;
select * from view_four