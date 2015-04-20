class Category < ActiveRecord::Base
  has_ancestry

  extend FriendlyId
  friendly_id :title, use: :slugged

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian
  end
end
