class Question < ActiveRecord::Base
    default_scope {order('-score')}
    belongs_to :room
end
