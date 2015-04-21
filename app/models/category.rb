class Category < ActiveRecord::Base
  has_ancestry

  has_many :adverts

  extend FriendlyId
  friendly_id :title, use: :slugged

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian
  end
end

# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string
#  slug       :string
#  ancestry   :string
#  created_at :datetime
#  updated_at :datetime
#
