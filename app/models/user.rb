class User < ActiveRecord::Base
  has_many :products 
  has_many :buyers, through: :products, source: :user #self join needed for buyer_id/ rails g user:references buyer:references name:string price:float
  has_secure_password

   EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i  
   validates :email, :first_name, :last_name,  presence: true 
   validates :email, uniqueness: { case_sensitive: false }, format: {with: EMAIL_REGEX }
   validate :password, confirmation: true, presence: true, on: :create 
   validate :password_confirmation, presence: true, on: :create

end
