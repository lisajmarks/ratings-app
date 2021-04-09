"""Script to seed database."""

import os
import json
from random import choice, randint
from datetime import datetime

import crud
import model
import server

os.system('dropdb ratings')
os.system('createdb ratings')

model.connect_to_db(server.app) 
model.db.create_all() #creating all tabels 

#execute the same commands we dumped to ratings.sql 

with open('data/movies.json') as f:  #opening our json file 
    movie_data = json.loads(f.read()) #adding the whole thing to movie data - loading reader

# Create movies, store them in list so we can use them
# to create fake ratings later
movies_in_db = []
for movie in movie_data:
    title, overview, poster_path = (movie['title'],
                                        movie['overview'],
                                        movie['poster_path'])
    release_date = datetime.strptime(movie['release_date'], '%Y-%m-%d')

    db_movie = crud.create_movie(title,
                                overview,
                                release_date,
                                poster_path)
    movies_in_db.append(db_movie)
#crud.create_movie putting it in the db

for n in range(10): #create 10 fake users
    email = f'user{n}@test.com'  # Voila! A unique email!
    password = 'test'


    for _ in range(10):
        random_movie = choice(movies_in_db)
        score = randint(1, 5) #assign random score

        crud.create_rating(user, random_movie, score)