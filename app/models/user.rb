class User < ActiveRecord::Base
  has_secure_password

  validates :kind, presence: true
  validates :email, presence: true,
  									format: /\A\S+@\S+\z/,
  									uniqueness: { case_sensitive: false }
  validates :pin, presence: true

  has_many :labs
  has_many :meds
  has_many :notes
  has_many :orders
  has_many :vital_signs

  def self.authenticate(email, password, pin)
  	user = User.find_by(email: email)
  	user && user.authenticate(password)
  end
end
