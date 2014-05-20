class Group < ActiveRecord::Base
  has_many :gists

  validates :name,
    presence: true,
    length: { minimum: 1 }
end
