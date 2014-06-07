class VoteItem < ActiveRecord::Base
  belongs_to :topic
  belongs_to :project
  belongs_to :vote
end
