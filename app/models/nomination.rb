class Nomination < ApplicationRecord
  belongs_to :user

  validates :Title, uniqueness: {message: '%{value} has already been nominated! Please make another selection.'}
  # validates :nomination_count_within_limit, :on => :create 

  # def nomination_count_within_limit
  #   if self.user.nominations(:reload).size >= 5
  #     errors.add(:base, 'You Have Reached Your Nomination Limit of 5 Movies!')
  #   end
  # end

end
