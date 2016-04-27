class Post < ActiveRecord::Base
  validates :title_number, presence: true
  validates :date_published, presence: true
  validates :article, presence: true

  after_initialize :init

  RECENT_POSTS_NUM = 20
  scope :recent, -> { order(date_published: :desc).limit(RECENT_POSTS_NUM) }

  def init
    self.date_published ||= Time.now
    self.views ||= 0
  end
end
