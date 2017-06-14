# == Schema Information
#
# Table name: shortened_urls
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  short_url  :text
#  long_url   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ShortenedUrl < ActiveRecord::Base
  validates :long_url, :user_id, presence: true
  validates :short_url, uniqueness: true

  def self.random_code
    SecureRandom.urlsafe_base64
  end

  def self.create!(user, long_url)
    short_url = ShortenedUrl.random_code
    ShortenedUrl.new(user_id: user.id, long_url: long_url, short_url: short_url)
  end

  belongs_to :submitter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_many :visits,
    primary_key: :id,
    foreign_key: :s_url_id,
    class_name: :Visit

  has_many :vistors,
    through: :visits,
    source: :user

end
