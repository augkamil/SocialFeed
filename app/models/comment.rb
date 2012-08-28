class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :entry, :counter_cahce => true
  
  after_create {|record| CommentActivity.write(record)}
end
