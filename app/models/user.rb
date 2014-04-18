class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts


  has_many :subscribed_users, through: :subscriptions, source: :subscribed
  has_many :subscriptions, foreign_key: "subscriber_id", dependent: :destroy
end
