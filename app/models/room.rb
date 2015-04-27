class Room < ActiveRecord::Base
  has_many :questions
end
