class User < ApplicationRecord
  validates :name, :email, presence: true

  def self.create_from_github(auth)
    User.create!(
      github_id: auth['uid'],
      name: auth['info']['name'],
      email: auth['info']['email']
    )
  end
end
