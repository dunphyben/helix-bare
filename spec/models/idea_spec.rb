require 'spec_helper'

describe Idea do

  it { should have_and_belong_to_many :users }
  it { should have_and_belong_to_many :tags }
  it { should have_and_belong_to_many :formats }

  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
  it { should validate_presence_of :summary }

end
