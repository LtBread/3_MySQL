Описание

База данных 'book_shop' содержит таблицы:

	1 users:
		id,
		login,
		password_hash,
		email,	
		phone,
		firstname,
		lastname,	
		birthday,
		created_at,
	 	updated_at;	
	 	
	2 genres:
		id
		name;	
		
	3 collections:
		id,
		name;
		
	4 publishing_houses
		id,
		name;
		
	5 authors:
		id,
		firstname,
		lastname;	
		
	6 age_limits:
		id,
		age_limit,
		description;
		
	7 books:
		id,	
		genre_id,
	  	collection_id,
	  	publishing_house_id,
	  	autor_id,
	  	age_limit_id,
	  	cover_id,
	  	name,
		description,
		price,	
		created_at,
	  	updated_at;
	  	
	8 orders:
		id,
		user_id;
		
	9 orders_books:
		id,	
		order_id,
		book_id,
		total;
		
	10 storehouses:
		id,
		address;
		
	11 storehouses_books:
		id,	
		storehouse_id,
		book_id,
		value;
		
	12 disconts:
		id,
		user_id,
		book_id,
		discont,
		started_at,
		finished_at,
		created_at,
	  	updated_at.
	
