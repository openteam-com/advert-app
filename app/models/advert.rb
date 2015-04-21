class Advert < ActiveRecord::Base
  belongs_to :category

  extend Enumerize
  enumerize :advert_type, in: [:buy, :sell, :exchange, :offer, :seek, :rent],
    predicates: true
end
