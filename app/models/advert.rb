class Advert < ActiveRecord::Base
  belongs_to :category

  extend Enumerize
  enumerize :advert_type, in: [:buy, :sell],
    predicates: true
end
