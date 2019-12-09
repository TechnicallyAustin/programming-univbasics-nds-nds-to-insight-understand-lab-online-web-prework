require 'pry'
require 'pp'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds 
end

def print_first_directors_movie_titles
  row_index = 0
  while row_index < directors_database.length do
    col_index = 0
    cord = directors_database[row_index][col_index]
    while col_index < cord.length.class do
      el_index = 0
      while el_index < cord[row_index].length do
        inner_leng = 0
        while inner_leng < cord[row_index][el_index] do
          puts "#{cord[row_index][el_index]}\n"
          el_index += 1
        end
        col_index += 1
      end
      row_index += 1
    end
  end
  #row_index += 1
  binding.pry
end
