class Article < ActiveRecord::Base
	has_and_belongs_to_many :categories
	has_many :comments
	belongs_to :user
	validates_presence_of :title,:location,:body
 	#scope :published, lambda { where("articles.published_at IS NOT NULL") }
	#scope :draft, lambda { where("articles.published_at IS NULL") }
	#scope :recent, lambda { published.where("articles.published_at > ?",1.week.ago.to_date)}
	scope :where_title, lambda { |term| where("articles.title LIKE ?", "%#{term}%") }
end
