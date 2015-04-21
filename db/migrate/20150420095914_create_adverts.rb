class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.string :phone
      t.string :advert_type
      t.string :price
      t.belongs_to :category
      t.belongs_to :user
      t.timestamps
    end
  end
end
