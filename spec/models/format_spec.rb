require 'spec_helper'

describe Format do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name}
  it { should have_and_belong_to_many :ideas }

end
