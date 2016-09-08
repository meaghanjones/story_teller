require 'rails_helper'

describe Story do
  it {should validate_presence_of :imgURL}
  it {should validate_presence_of :content}
end
