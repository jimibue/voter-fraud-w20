class Room < ApplicationRecord
  has_many :users #testing this out
  has_many :likes

  def get_things
    Thing.all.where(tag: self.tag)
  end

  def info
    "code: #{self.code} num_users:#{self.num_users} joined_users:#{self.users.size} tag:#{self.tag}"
  end
end
