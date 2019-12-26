$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def director_totals(nds)
  totals = {}
  director_index = 0
  while director_index < nds.length do
    director = nds[director_index][:name]
    totals[director] = 0
    movie_index = 0
    while movie_index < nds[director_index][:movies].length do
      totals[director] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    director_index += 1
  end
  totals
end
