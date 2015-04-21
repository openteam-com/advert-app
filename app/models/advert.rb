class Advert < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  has_many :gallery_images

  validates_presence_of :title, :description, :phone, :advert_type, :price, :category

  extend Enumerize
  enumerize :advert_type, in: [:buy, :sell, :exchange, :offer, :seek, :rent],
    predicates: true

  extend FriendlyId
  friendly_id :title, use: :slugged

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian
  end
end

# == Schema Information
#
# Table name: adverts
#
#  id          :integer          not null, primary key
#  title       :string
#  slug        :string
#  description :text
#  phone       :string
#  advert_type :string
#  price       :string
#  category_id :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#
