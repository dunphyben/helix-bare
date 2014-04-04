class Tag < ActiveRecord::Base

  has_and_belongs_to_many :ideas

  validates :name, :presence => true, :uniqueness => true

  validates :name, length: {
    minimum: 3,
    maximum: 20,
    too_short: "Must have at least 3 characters",
    too_long: "Must have fewer than 20 characters"
  }

  validates :name, format: {
    :with => /\A[a-zA-Z0-9\s]+\z/,
    :message => "Please use only letters, spaces, and numbers"
  }



end
