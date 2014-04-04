class User < ActiveRecord::Base

  has_and_belongs_to_many :ideas
  validates :name, :uniqueness => true, :presence => true

  validates :name, length: {
    minimum: 4,
    maximum: 17,
    too_short: "Must have at least 4 letters",
    too_long: "Must have fewer than 17 characters"
  }

  validates :name, format: {
    :with => /\A[a-zA-Z0-9]+\z/,
    :message => "Please use only regular letters as username"
  }


end


