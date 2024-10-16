create database cenimas;
use cenimas;
select * from actor;
select * from cast;
select * from director;
select * from movie;
select * from genres;
select * from movie_direction;
select * from movie_genres;
select * from ratings;
select * from reviewer;

#1 Write a SQL query to find when the movie 'American Beauty' released. Return movie release year. 
select mov_id, mov_title from movie where mov_title = 'american beauty';

#2 Write a SQL query to find those movies, which were released before 1998. Return movie title. 
select mov_year, mov_title from movie where mov_year < 1998;

#3 Write a query where it should contain all the data of the movies which were released after 1995 and 
#their movie duration was greater than 120. 
select * from movie where mov_year > 1995 and mov_time >120;

#4 Write a query to determine the Top 7 movies which were released in United Kingdom. Sort the data in ascending order of the movie year. 
select * from movie where mov_rel_country = 'UK' order by mov_year asc limit 7;

#5 Set the language of movie language as 'Chinese' for the movie which has its existing language as Japanese and the movie year was 2001. 
update movie set mov_lang = 'chinese' where mov_lang = 'japanese' and mov_year = '2001';
select * from movie;

#6 Write a SQL query to find name of all the reviewers who rated the movie 'Slumdog Millionaire'. 
select m.mov_title , m.mov_id,r.mov_id,r.rev_id,w.rev_id ,rev_name 
from movie as m join ratings as r on m.mov_id=r.mov_id inner join reviewer as w 
on r.rev_id=w.rev_id where mov_title ='Slumdog Millionaire';


#7 Write a query which fetch the first name, last name & role played by the actor where output should all exclude Male actors. 
select concat(a.act_fname,a.act_lname)as actor_name, a.act_gender, c.role from 
actor as a right join cast as c on a.act_id = c.act_id 
where a.act_gender = 'f';

#8 Write a SQL query to find the actors who played a role in the movie 'Annie Hall'. 
#Fetch all the fields of actor table. (Hint: Use the IN operator)
select concat(a.act_fname,a.act_lname) as actor_name,a.*,m.mov_id,m.mov_title 
from actor as a inner join cast as c on a.act_id = c.act_id 
inner join movie as m on c.mov_id = m.mov_id
where mov_title = 'annie hall';


#10 Write a SQL query to find those movies that have been released in countries other than the United Kingdom. 
#Return movie title, movie year, movie time, and date of release, releasing country. 
select * from movie;
select mov_title, mov_year, mov_time, mov_dt_rel, mov_rel_country from movie where mov_rel_country != 'uk';

#11Print genre title, maximum movie duration and the count the number of movies in each genre. (HINT: By using inner join) 
select * from genres;
select * from movie;
select * from movie_genres;
select g.gen_title, m.mov_time, count(gen_title) as no_genre
from genres as g inner join movie_genres as s on g.gen_id = s.gen_id 
inner join movie as m on s.mov_id = m.mov_id group by gen_title;

#12 Create a view which should contain the first name, last name, title of the movie & role played by particular actor. 
select a.act_fname,a.act_lname, m.mov_title,c.role from 
actor as a inner join cast as c on a.act_id=c.act_id inner join movie as m on c.mov_id=m.mov_id;

#13 Write a SQL query to find the movies with the lowest ratings
select m.mov_id,r.num_o_ratings from movie as m inner join ratings as r on m.mov_id = r.mov_id order by num_o_ratings asc;