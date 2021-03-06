class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :order => "created_at DESC"
  has_many :votes
  has_and_belongs_to_many :tags

  self.per_page = 10
end
