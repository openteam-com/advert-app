class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.attachment :image
      t.belongs_to :advert

      t.timestamps null: false
    end
  end
end
