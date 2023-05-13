class PostsController < ApplicationController


#   def new
#     @place = Place.new
#     end
    
#     def create 
#       @place = Place.new 
#       @place["name"] = params["place"]["name"]
#       @place.save
#       redirect_to "/places"
#     end

# end


def new
  @post = Post.new
  @post["place_id"] = params["place_id"]
  # render contacts/new view with new Contact form
end

def create
  # start with a new Contact
  @post = Post.new

  # assign user-entered form data to Contact's columns
  @post["title"] = params["post"]["title"]
  @post["description"] = params["post"]["description"]
  @post["posted_on"] = params["post"]["posted_on"]

  # assign relationship between Contact and Company
  @post["place_id"] = params["post"]["place_id"]

  # save Contact row
  @post.save

  # redirect user
  redirect_to "/places/#{@post["place_id"]}"
end

end


