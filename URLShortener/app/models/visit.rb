# == Schema Information
#
# Table name: visits
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  s_url_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visit < ActiveRecord::Base
  validates :user_id, :s_url_id, presence: true

  def self.record_visit!(user, shortened_url)
    Visit.new(user_id: user.id, s_url_id: shortened_url.id)
  end

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :shortened_url,
    primary_key: :id,
    foreign_key: :s_url_id,
    class_name: :ShortenedUrl

end
