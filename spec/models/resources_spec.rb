require 'spec_helper'

describe Resource do
  it { should belong_to :tool }
  it { should belong_to :user }
  it { should belong_to :cat }

  it { should validate_presence_of :name }
  it { should validate_presence_of :summary }
  it { should validate_presence_of :url }
end
