require 'spec_helper'

describe Resource do
  it { should belong_to :tool }
  it { should belong_to :user }
  it { should belong_to :cat }

  it { should validate_presence_of :name }
  it { should validate_presence_of :summary }
  it { should validate_presence_of :url }

  # describe 'New Resource' do
  #   it 'should belong to the tool that that the current_user is viewing' do
  #     current_user = User.create(id: 2, email: 'ben@epicodus.com', password: 'password')
  #     test_tool = Tool.create(id: 1, name: 'Ruby', summary: 'A high level programming language', url: 'https://www.ruby-lang.org', user_id: 4)
  #     test_resource = Resource.create(name: 'Ruby Monk', summary: 'Learn Ruby through a series of tiered, exciting challenges',
  #                 tool_id: 1)
  #     test_tool.test_resource.should eq test_resource
  #   end
  # end
end
