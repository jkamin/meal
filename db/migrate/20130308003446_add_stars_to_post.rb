class AddStarsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :stars, :integer
  end
end
