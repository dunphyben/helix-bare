require 'spec_helper'

describe Tag do

  it { should have_and_belong_to_many :ideas }

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  it { should_not allow_value('sdflafj53%').for(:name) }
  it { should allow_value('Ben123').for(:name) }
  it { should allow_value('Moe Rocca').for(:name)}

  it { should_not allow_value('12').for(:name) }
  it { should allow_value('123').for(:name) }
  it { should_not allow_value('123fmiumkfumumkuftkmifmki7ri87676').for(:name) }

end


