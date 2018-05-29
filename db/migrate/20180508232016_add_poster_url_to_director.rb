class AddPosterUrlToDirector < ActiveRecord::Migration[5.1]
  def change
    add_column :directors, :poster_url, :string
    add_column :directors, :string, :string
  end
end
