class Story<ActiveRecord::Base
  has_many :sentences

  validates :imgURL, :presence => true
  validates :content, :presence => true
end
