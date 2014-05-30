# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  Genre.create([{ title: 'Action' }, { title: 'Comedy' }, { title: 'Horror' }, { title: 'Animation' },
  { title: 'Romance' }, { title: 'Crime' }, { title: 'Drama' }])
  movie = Movie.new({ title: 'The Shawshank Redemption' })
  movie.genres << Genre.find_by_title('Crime')
  movie.genres << Genre.find_by_title('Drama')
  movie.save