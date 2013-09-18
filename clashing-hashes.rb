# The first 4 lines allow us to use the sinatra gem

require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

# get request for the root url
get "/" do
  @title = "Clashing Hashes"
  @show_description = true 

  erb :index
  # Sinatra only let's you pass variables prefixed with @ 
  # (as if they're instance variables)
  # In ERB files, you can evaluate ruby code by surrounding it with <%= %>. 
  # This will evaluate the ruby code and place the result into the HTML
end

# post request for twitter
post "/twitter" do

  @first_hash = params[:first_hash].upcase
  @second_hash = params[:second_hash].upcase

  erb :twitter

  # the above code is the same as below:
  # params.inspect 
  # => {"first_hash"=>"becca", "second_hash"=>"amy"}
  
end
