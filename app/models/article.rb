class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  def average_reading_time
    # 200 is the average number of words an average person reads per minute
    body.split(/\W+/).length / 200
  end
end
