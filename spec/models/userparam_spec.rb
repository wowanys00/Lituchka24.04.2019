require 'spec_helper'

describe Userparam do
   
    it "validates the firstname, lastname and age isn't empty" do
        userparam = Userparam.new(firstname: '', lastname: '', age: '')
        userparam.valid?
        userparam.errors(:firstname, :lastname, :age).should_not be_empty
    end
end
