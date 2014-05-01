require 'spec_helper'

describe Tool do
  it { should have_many :resources }
  it { should belong_to :user }

  it { should validate_presence_of :name }
  it { should validate_presence_of :summary }
  it { should validate_presence_of :url }

  it { should accept_nested_attributes_for :resources }
end
