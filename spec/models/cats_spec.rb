require 'spec_helper'

describe Cat do
  it { should have_many :resources }
  it { should validate_presence_of :name }
end
