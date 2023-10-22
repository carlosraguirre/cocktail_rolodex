class Cocktail < ApplicationRecord
  belongs_to :user
  belongs_to :favorites
end
