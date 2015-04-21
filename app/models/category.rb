class Category < ActiveRecord::Base
  has_ancestry

  has_many :adverts

  extend FriendlyId
  friendly_id :title, use: :slugged

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian
  end

  def self.category_values
    array = []
    roots.each do |root|
      array << root.id
    end

    array
  end
end

# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  slug       :string(255)
#  ancestry   :string(255)
#  created_at :datetime
#  updated_at :datetime
#
