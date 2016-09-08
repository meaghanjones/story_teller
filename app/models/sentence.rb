class Sentence<ActiveRecord::Base
  belongs_to :story

  validates :username, :presence => true
  validates :content, :presence => true, length:{maximum: 100}

  before_save(:capitalize_content)

private
  define_method :capitalize_content do
    self.content = (content().capitalize())
    self.username = (username().capitalize())
  end
end
