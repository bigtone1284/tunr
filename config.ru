require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'models/song.rb'
require_relative 'models/artist.rb'
require_relative 'models/playlist.rb'

require_relative 'controllers/home_controller.rb'
require_relative 'controllers/artists_controller.rb'
require_relative 'controllers/songs_controller.rb'
require_relative 'controllers/playlists_controller.rb'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

after { ActiveRecord::Base.connection.close }

run Sinatra::Application