require 'spec_helper'

describe Idea do

  it { has_and_belongs_to_many :users }
  it { has_and_belongs_to_many :tags }
  it { has_and_belongs_to_many :formats }

end
