class Todoitem < ActiveRecord::Base
  belongs_to :todolist
  attr_accessible :done, :done_at, :text, :todolist_id

  validates :text, :length => { :minimum => 2 }

  before_save :set_done_at

private
  def set_done_at
    if self.done_changed? and self.done then
      self.done_at = Time.now
    end
  end
end
