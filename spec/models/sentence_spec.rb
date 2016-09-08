require 'rails_helper'

describe Sentence do
  it {should validate_presence_of :username}
  it {should validate_presence_of :content}
  it {should belong_to :story}
end
