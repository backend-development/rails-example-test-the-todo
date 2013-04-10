class Todolist < ActiveRecord::Base
  has_many :todoitems
  attr_accessible :title, :todoitems_attributes
  accepts_nested_attributes_for :todoitems

  validates :title, :length => { :minimum => 2 }
end
