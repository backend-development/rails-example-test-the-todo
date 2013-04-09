class Todoitem < ActiveRecord::Base
  attr_accessible :done, :done_at, :text
end
