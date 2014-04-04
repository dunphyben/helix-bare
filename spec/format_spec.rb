require 'spec_helper'

describe Format do

  it { has_and_belongs_to_many :tags }
  it { has_and_belongs_to_many :ideas }

end
