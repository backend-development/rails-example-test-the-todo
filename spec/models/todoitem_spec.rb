require 'spec_helper'

describe Todoitem do
  describe "validates text" do
    it { should     accept_values_for(:text, "der punkt auf der liste") }
    it { should_not accept_values_for(:text, "", nil) }
  end

  it "is not done when created" do
    t = Todoitem.create!( :text => "do something" )
    expect(t.done).to be_false
    expect(t.done_at).to be_nil
  end

  it "sets done_at" do
    t = Todoitem.create!( :text => "do something" )
    Timecop.freeze do
      t.done = true
      t.save!
      t.reload
      t.done_at.should == Time.zone.now
    end
  end

end
