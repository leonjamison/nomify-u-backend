class NominationSerializer < ActiveModel::Serializer
  attributes :id, :Title, :Year, :Poster, :api_movieKey
  has_one :user
end
