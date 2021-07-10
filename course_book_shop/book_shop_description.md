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
		
	-- Исключена
	7 covers:
		id,
		filename,
		size,
		metadata;
		
	8 books:
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
	  	
	9 orders:
		id,
		user_id;
		
	10 orders_books:
		id,	
		order_id,
		book_id,
		total;
		
	11 storehouses:
		id,
		address;
		
	12 storehouses_books:
		id,	
		storehouse_id,
		book_id,
		value;
		
	13 disconts:
		id,
		user_id,
		book_id,
		discont,
		started_at,
		finished_at,
		created_at,
	  	updated_at.
	
