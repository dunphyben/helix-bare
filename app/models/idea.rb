class Idea < ActiveRecord::Base

  has_and_belongs_to_many :users
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :formats

  validates :title, :presence => true
  validates :content, :presence => true
  validates :summary, :presence => true

end
