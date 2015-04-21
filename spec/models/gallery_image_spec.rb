require 'rails_helper'

RSpec.describe GalleryImage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
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
