# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'}
  {:title => 'Rogue One: A Star Wars Story', :rating => 'PG-13', 
    :release_date => '2016-12-10' },
  {:title => 'Raging Bull' :rating => 'R', 
    :release_date => '1980-11-14' },
  {:title => 'A Star Is Born', :rating => 'R', 
    :release_date => '2018-08-31' }
]

more_movies.each do |movie|
    Movie.find_or_create_by(title: movie[:title]) do |m|
      m.rating = movie[:rating]
      m.release_date = movie[:release_date]
    end
end
