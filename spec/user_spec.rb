require 'spec_helper'

describe User do

  it { has_and_belongs_to_many :ideas }
  it { has_and_belongs_to_many :formats }

end
