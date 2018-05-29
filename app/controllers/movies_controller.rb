class MoviesController < ApplicationController

  def destroy
    Movie.delete(params["id"])
    redirect_to "/movies"
  end

  def create
    m = Movie.create title: params["title"],
                     year: params["year"],
                     mpaa: params["rating"],
                     runtime: params["runtime"],
                     plot: params["plot"],
                     poster_url: params["poster_url"],
                     director_id: params["director_id"]

    redirect_to "/movies"
  end

  def update
    m = Movie.find_by(id: params["id"])

    m.update title: params["title"],
             year: params["year"],
             mpaa: params["rating"],
             runtime: params["runtime"],
             plot: params["plot"],
             poster_url: params["poster_url"],
             director_id: params["director_id"]

    redirect_to "/movies/#{m.id}"
  end

end
