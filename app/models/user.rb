class User < ApplicationRecord
    has_many :nominations
 # validates_length_of :nominations, maximum: 5, message => 'You Have Reached The Limit of 5 Films To Be Nominated!' 
#  def nomination_limit
#     roles.first.nominations.count
#   end

end
