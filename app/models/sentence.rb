class Sentence<ActiveRecord::Base
  belongs_to :story

  validates :username, :presence => true
  validates :content, :presence => true, length:{maximum: 100}

end
