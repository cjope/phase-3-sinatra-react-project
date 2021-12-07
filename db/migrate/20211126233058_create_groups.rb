class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.belongs_to :user
      t.string :name
      t.string :emoji
    end
  end
end
