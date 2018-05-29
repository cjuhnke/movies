class DirectorsController < ApplicationController

  def index

  end

  def show

  end

  def destroy
    Director.delete(params["id"])
    for movie in Movie.where(director_id: params["id"])
          movie.update director_id: nil
    end
    redirect_to "/directors"
  end

  def new

  end

  def create
    d = Director.create name: params["name"],
                     headshot_url: params["headshot_url"]

    redirect_to "/directors"

  end

  def edit

  end

  def update
    d = Director.find_by(id: params["id"])

    d.update name: params["name"],
             headshot_url: params["headshot_url"]

    redirect_to "/directors/#{d.id}"
  end

end
