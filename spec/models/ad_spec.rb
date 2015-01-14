require 'spec_helper'

describe Ad do

  it { should belong_to(:user) }
  it { should belong_to(:brand) }
  it { should belong_to(:carrier) }
  it { should belong_to(:condition) }
  it { should serialize(:accessories) }
  it { should have_many(:pictures).dependent(:destroy) }
  it { should accept_nested_attributes_for(:pictures) }

end
