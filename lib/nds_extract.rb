$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def director_totals(nds)
  total = {}
  director_index = 0
  while director_index < nds.length do
    director = nds[director_index][:name]
    total[director] = 0
    movie_index = 0
    while movie_index < nds[director_index][:movies].length do
      total[director] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    director_index += 1
  end
  total
end
