require_relative '../Ruby-Capstone/class/add_movie'
require './class/add_music'
require_relative '../Ruby-Capstone/class/book_methods'
require_relative '../Ruby-Capstone/class/display_menu'

class App
  attr_accessor :book_list, :author_list

  def initialize
    @book_list = []
    @author_list = []
    @music_album = []
    @games = []
    @movies = CreateMovies.new
  end

  def book_display
    list_books
  end

  def author_display
    list_authors
  end

  def book_create
    create_book
  end

  def movie_create
    @movies.add_movie
  end

  def movie_display
    @movies.list_all_movies
  end

  def source_display
    @movies.list_all_sources
  end
end
