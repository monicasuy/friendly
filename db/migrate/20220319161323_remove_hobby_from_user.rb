class RemoveHobbyFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :hobby, :string
  end
end
