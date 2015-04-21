class GalleryImage < ActiveRecord::Base
  has_attached_file :file, :storage => :elvfs, :elvfs_url => Settings['storage.url']

  validates_attachment :file, :presence => true, :content_type => {
    :content_type => ['image/jpeg', 'image/jpg', 'image/png'],
    :message => 'Изображение должно быть в формате jpeg, jpg или png'
  }
end

# == Schema Information
#
# Table name: gallery_images
#
#  id                 :integer          not null, primary key
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  image_url          :text
#  advert_id          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
