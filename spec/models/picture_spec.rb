require 'spec_helper'

describe Picture do

  it { should belong_to(:ad) }
  it { should validate_presence_of(:ad) }

end
