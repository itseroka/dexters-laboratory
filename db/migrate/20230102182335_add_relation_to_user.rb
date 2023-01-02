class AddRelationToUser < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :posts, :user, foreign_key: true
  end
end
