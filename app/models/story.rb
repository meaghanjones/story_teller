class Story<ActiveRecord::Base
  validates :imgURL, :presence => true
  validates :content, :presence => true
end
