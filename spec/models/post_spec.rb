require 'spec_helper'

describe Post do
    it "validates title and makes sure it's note empty" do
        post = Post.new(title: '')
        post.valid?
        post.errors(:title).should_not be_empty
    end
end