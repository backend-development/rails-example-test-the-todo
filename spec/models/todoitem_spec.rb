require 'spec_helper'

describe Todoitem do
  it "is not done when created" do
    t = Todoitem.create!( :text => "do something" )
    expect(t.done).to be_false
    expect(t.done_at).to be_nil
  end
end
