class User < ActiveRecord::Base
	has_one :profile
	has_many :articles, -> {order('published_at DESC')}, :dependent => :destroy
	has_many :replies, :through => :articles, :source => :comments
end
