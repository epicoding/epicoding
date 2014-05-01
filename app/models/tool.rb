class Tool < ActiveRecord::Base
  has_many :resources
  belongs_to :user

  validates_presence_of :name
  validates_presence_of :summary
  validates_presence_of :url
end
