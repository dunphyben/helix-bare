require 'spec_helper'

describe User do

  it { should have_and_belong_to_many :ideas }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :name }

end
