class Idea < ActiveRecord::Base

  has_and_belongs_to_many :users
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :formats

  validates :title, :presence => true
  validates :content, :presence => true
  validates :summary, :presence => true



  before_save :slugify

  validates :title, length: {
    minimum: 3,
    maximum: 90,
    too_short: "Must have at least 3 characters",
    too_long: "Must have fewer than 50 characters"
  }

  validates :summary, length: {
    minimum: 10,
    maximum: 140,
    too_short: "Must have at least 10 characters",
    too_long: "Must have fewer than 140 characters"
  }

  validates :content, length: {
    minimum: 10,
    maximum: 10000,
    too_short: "Must have at least 100 characters",
    too_long: "You have reached your character limitation. Please visit our <%= /pro %> page for pro plans."
  }


  def slugify
    self.slug = self.title.downcase.gsub(" ", "-")
  end

  def self.unpublished
    @unpublished = Idea.where('published = false')
  end

  def self.published
    @published = Idea.where('published = true')
  end


end
