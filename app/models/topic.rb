class Topic < ApplicationRecord
  validates_presence_of :title

  # this next line might need to be commented out.
  has_many :blogs

  def self.with_blogs
    includes(:blogs).where.not(blogs: { id: nil })
  end
end
