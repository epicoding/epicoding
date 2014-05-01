class Cat < ActiveRecord::Base
  has_many :resources
  validates_presence_of :name
end
