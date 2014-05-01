class Resource < ActiveRecord::Base
  belongs_to :tool
  belongs_to :user
  belongs_to :cat

  validates_presence_of :name
  validates_presence_of :summary
  validates_presence_of :url
end
