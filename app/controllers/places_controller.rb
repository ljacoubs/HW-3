class PlacesController < ApplicationController

  def index
    @places = Place.all 
    render :template => "places/index"
  end

  def show 
    @place = Place.find_by({"id" => params["id"]}) 
    @posts = Post.where({"place_id" => @place["id"]})
  end

           

  def new
  @place = Place.new
  end
  
  def create 
    @place = Place.new 

    puts params["place"]

    @place["name"] = params["place"]["name"]
    @place.save
    redirect_to "/places"
  end



# redirect user

# <h2><%= @post["title"] %></h2>

# <h3><%= @post["posted_on"] %></h3>

# <h4><%= @post["description"] %></h4>

end
