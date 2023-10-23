class CockktailSerializer < ActiveModel::Serializer
  attributes :id, :cocktail_name

  belongs_to :user
  has_many :favorites
end
