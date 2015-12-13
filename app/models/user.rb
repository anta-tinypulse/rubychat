class User < ActiveRecord::Base
  has_many :friendships, :foreign_key => "user_id",
           :class_name => "Friendship"
  has_many :friends, :through => :friendships

  has_many :sent_messages, :class_name => 'PrivateMessage', :foreign_key => 'sender_id'
  has_many :received_messages, :class_name => 'PrivateMessage', :foreign_key => 'recipient_id'

  has_secure_password
end
