class Story<ActiveRecord::Base
  has_many :sentences

  validates :imgURL, :presence => true
  validates :content, :presence => true

  before_save(:capitalize_content)

private
  define_method :capitalize_content do
    self.content = (content().capitalize())
  end
end
