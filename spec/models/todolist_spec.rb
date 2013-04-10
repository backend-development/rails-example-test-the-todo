require 'spec_helper'

describe Todolist do

  describe "validates data" do
    it { should     accept_values_for(:title, "die liste") }
    it { should_not accept_values_for(:title, "", nil) }
  end
end
