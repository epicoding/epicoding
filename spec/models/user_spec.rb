require 'spec_helper'

describe User do
  it { should have_many :resources }
  it { should have_many :tools }
end
