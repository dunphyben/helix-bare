require 'spec_helper'

describe Tag do

  it { has_and_belongs_to_many :ideas }
  it { has_and_belongs_to_many :formats }

end
